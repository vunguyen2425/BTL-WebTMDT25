<?php
require_once('database/dbhelper.php');

if (!empty($_POST)) {
    $cart = [];
    if (isset($_COOKIE['cart'])) {
        $json = $_COOKIE['cart'];
        $cart = json_decode($json, true);
    }
    var_dump($cart);
    if ($cart == null || count($cart) == 0) {
        header('Location: index.php');
        die();
    }
    $fullname = $_POST['fullname'];
    $email = $_POST['email'];
    $phone_number = $_POST['phone_number'];
    $address = $_POST['address'];
    $note = $_POST['note'];
    $orderDate = date('Y-m-d H:i:s');
    $pay = $_POST['typepay'];
    if ($pay == "cash") {

        $sql = "INSERT INTO orders(fullname,email, phone_number,address, note, order_date) 
    values ('$fullname','$email','$phone_number','$address','$note','$orderDate')";
        execute($sql);

        $sql = "SELECT * FROM orders WHERE order_date = '$orderDate'";
        $order = executeResult($sql); // in ra 1 dòng 
        foreach ($order as $item) {
            $orderId = $item['id'];
        }

        if (isset($_COOKIE['username'])) {
            $username = $_COOKIE['username'];
            $sql = "SELECT * FROM user WHERE username = '$username'";
            $user = executeResult($sql); // in ra 1 dòng 
            foreach ($user as $item) {
                $userId = $item['id_user'];
            }
        }



        // lấy cartList ra
        $idList = [];
        foreach ($cart as $item) {
            $idList[] = $item['id'];
        }
        if (count($idList) > 0) {
            $idList = implode(',', $idList); // chuyeern
            //[2, 5, 6] => 2,5,6

            $sql = "SELECT * FROM product where id in ($idList)";
            $cartList = executeResult($sql);
        } else {
            $cartList = [];
        }
        $status = 'Đang chuẩn bị';

        foreach ($cartList as $item) {
            $num = 0;
            foreach ($cart as $value) {
                if ($value['id'] == $item['id']) {
                    $num = $value['num'];
                    break;
                }
            }
            $sql = "INSERT into order_details(order_id, product_id,id_user, num, price,status) values ('$orderId', " . $item['id'] . ",'$userId','$num', " . $item['price'] . ",'$status')";
            execute($sql);
            echo '<script language="javascript">
                alert("Đặt hàng thành công!"); 
                window.location = "history.php";
            </script>';
        }
        setcookie('cart', '[]', time() - 1000, '/');
    }    // thêm vào order 
    else if ($pay == "banking") {

        // PHP Version 7.3.3

        $config = [
            "app_id" => 554 ,
            "key1" => "8NdU5pG5R2spGHGhyO99HN1OhD8IQJBn",
            "key2" => "uUfsWgfLkRLzq6W2uNXTCxrfxs51auny",
            "endpoint" => "https://sb-openapi.zalopay.vn/v2/create"
        ];

        $embeddata = '{}'; // Merchant's data
        $items = '[]'; // Merchant's data
        $transID = rand(0, 1000000); //Random trans id
        $order = [
            "app_id" => $config["app_id"],
            "app_time" => round(microtime(true) * 1000), // miliseconds
            "app_trans_id" => date("ymd") . "_" . $transID, // translation missing: vi.docs.shared.sample_code.comments.app_trans_id
            "app_user" => "user123",
            "item" => $items,
            "embed_data" => $embeddata,
            "amount" => $total ,
            "description" => "Lazada - Payment for the order #$transID",
            "bank_code" => "zalopayapp"
        ];

        // appid|app_trans_id|appuser|amount|apptime|embeddata|item
        $data = $order["app_id"] . "|" . $order["app_trans_id"] . "|" . $order["app_user"] . "|" . $order["amount"]
            . "|" . $order["app_time"] . "|" . $order["embed_data"] . "|" . $order["item"];
        $order["mac"] = hash_hmac("sha256", $data, $config["key1"]);

        $context = stream_context_create([
            "http" => [
                "header" => "Content-type: application/x-www-form-urlencoded\r\n",
                "method" => "POST",
                "content" => http_build_query($order)
            ]
        ]);

        $resp = file_get_contents($config["endpoint"], false, $context);
        $result = json_decode($resp, true);
        header("Location: " . $result["order_url"]);
        exit(); // kết thúc script để tránh chạy tiếp

        // foreach ($result as $key => $value) {
        //     echo "$key: $value<br>";
        // }
    }
}
