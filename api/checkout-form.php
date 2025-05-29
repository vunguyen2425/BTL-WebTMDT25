<?php
require_once('database/dbhelper.php');

if (!empty($_POST)) {
    $cart = [];
    if (isset($_COOKIE['cart'])) {
        $json = $_COOKIE['cart'];
        $cart = json_decode($json, true);
    }

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

        $sql = "INSERT INTO orders(fullname,email, phone_number,address, note, order_date,typepay, paymentStatus) 
    values ('$fullname','$email','$phone_number','$address','$note','$orderDate','cash', 0)";
        $resultId = insertAndGetId($sql);
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
            $sql = "INSERT into order_details(order_id, product_id, id_user, num, price, status, typepay, paymentStatus) values ('$orderId', " . $item['id'] . ",'$userId','$num', " . $item['price'] . ",'Đang chuẩn bị','cash', 0)";
            execute($sql);
            echo '<script language="javascript">
                alert("Đặt hàng thành công!"); 
                window.location = "history.php";
            </script>';
        }
        setcookie('cart', '[]', time() - 1000, '/');
    }    // thêm vào order 
    else if ($pay == "banking") {

        // 1. Tạo đơn hàng trước (giống phần cash)
        $sql = "INSERT INTO orders(fullname,email, phone_number,address, note, order_date,typepay, paymentStatus) 
    values ('$fullname','$email','$phone_number','$address','$note','$orderDate','banking', 0)";
        $resultId = insertAndGetId($sql);
        $sql = "SELECT * FROM orders WHERE order_date = '$orderDate'";
        $order = executeResult($sql);
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

        // Lấy cartList ra từ database
        $idList = [];
        foreach ($cart as $item) {
            $idList[] = $item['id'];
        }
        if (count($idList) > 0) {
            $idList = implode(',', $idList);
            $sql = "SELECT * FROM product where id in ($idList)";
            $cartList = executeResult($sql);
        } else {
            $cartList = [];
        }
        
         $status = 'Đang chuẩn bị';

        $total = 0;
        foreach ($cartList as $item) {
           $num = 0;
            foreach ($cart as $value) {
                if ($value['id'] == $item['id']) {
                    $num = $value['num'];
                    break;
                }
            }
            $total += $num * $item['price'];
            $sql = "INSERT into order_details(order_id, product_id,id_user, num, price, status, typepay, paymentStatus) values ('$orderId', " . $item['id'] . ",'$userId','$num', " . $item['price'] . ",'Đang chuẩn bị' ,'banking', 1)";
            execute($sql);
        }
        setcookie('cart', '[]', time() - 1000, '/');

        $embeddata = json_encode(['order_id' => $orderId]);
        $items = '[]';
        $transID = rand(0, 1000000);

        // Đặt khai báo $config lên trước khi dùng
        $config = [
            "app_id" => 554,
            "key1" => "8NdU5pG5R2spGHGhyO99HN1OhD8IQJBn",
            "key2" => "uUfsWgfLkRLzq6W2uNXTCxrfxs51auny",
            "endpoint" => "https://sb-openapi.zalopay.vn/v2/create"
        ];

        $order = [
            "app_id" => $config["app_id"],
            "app_time" => round(microtime(true) * 1000),
            "app_trans_id" => date("ymd") . "_" . $transID,
            "app_user" => "user123",
            "item" => $items,
            "embed_data" => $embeddata,
            "amount" => $total,
            "description" => "Lazada - Payment for the order #$transID",
            "bank_code" => "zalopayapp",
            "redirect_url" => "http://localhost/BTL-Web/api/payment-success.php"
        ];

        // PHP Version 7.3.3

        $config = [
            "app_id" => 554,
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
            "app_trans_id" => date("ymd") . "_" . $transID,
            "app_user" => "user123",
            "item" => $items,
            "embed_data" => $embeddata,
            "amount" => $total,
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
        echo '<script>
            window.open("' . $result["order_url"] . '", "_blank");
            window.location = "../index.php"; 
        </script>';
        exit(); // kết thúc script để tránh chạy tiếp

        // foreach ($result as $key => $value) {
        //     echo "$key: $value<br>";
        // }
    }
}
