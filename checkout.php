<?php
require_once('database/dbhelper.php');
require_once('utils/utility.php');
require_once('api/checkout-form.php');

// Lấy danh sách ID và số lượng từ query string
$selectedIds = $_GET['id'] ?? [];
$selectedNums = $_GET['num'] ?? [];
$selectedProducts = [];

if (!empty($selectedIds)) {
    // Chuyển danh sách ID thành chuỗi để sử dụng trong truy vấn SQL
    $idList = implode(',', array_map('intval', $selectedIds));
    $sql = "SELECT * FROM product WHERE id IN ($idList)";
    $selectedProducts = executeResult($sql);

    // Kết hợp số lượng với sản phẩm
    foreach ($selectedProducts as &$product) {
        $index = array_search($product['id'], $selectedIds);
        $product['num'] = isset($selectedNums[$index]) ? (int)$selectedNums[$index] : 1;
    }
} else {
    // Nếu không có sản phẩm nào được chọn, chuyển hướng về giỏ hàng
    echo '<script>
        alert("Không có sản phẩm nào được chọn để thanh toán!");
        window.location="cart.php";
    </script>';
    exit();
}

// Kiểm tra đăng nhập
if (!isset($_COOKIE['username'])) {
    echo '<script>
        alert("Vui lòng đăng nhập để tiếp hành mua hàng");
        window.location="login/login.php";
    </script>';
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="plugin/fontawesome/css/all.css">
    <link rel="stylesheet" href="css/cart.css">
    <title>Thanh toán</title>
</head>
<body>
    <div id="wrapper">
        <?php require_once('layout/header.php'); ?>
        <main>
            <section class="cart">
                <form action="" method="POST">
                    <div class="container">
                        <h3 style="text-align: center;">Tiến hành đặt hàng</h3>
                        <div class="row">
                            <div class="panel panel-primary col-md-6">
                                <h4 style="padding: 2rem 0; border-bottom:1px solid black;">Nhập thông tin mua hàng</h4>
                                <div class="form-group">
                                    <label for="usr">Họ và tên:</label>
                                    <input required="true" type="text" class="form-control" id="usr" name="fullname">
                                </div>
                                <div class="form-group">
                                    <label for="email">Email:</label>
                                    <input required="true" type="email" class="form-control" id="email" name="email">
                                </div>
                                <div class="form-group">
                                    <label for="phone_number">Số điện thoại:</label>
                                    <input required="true" type="text" class="form-control" id="phone_number" name="phone_number">
                                </div>
                                <div class="form-group">
                                    <label for="address">Địa chỉ:</label>
                                    <input required="true" type="text" class="form-control" id="address" name="address">
                                </div>
                                <div class="form-group">
                                    <label for="note">Ghi chú:</label>
                                    <textarea class="form-control" rows="3" name="note" id="note"></textarea>
                                </div>
                            </div>
                            <div class="panel panel-primary col-md-6">
                                <h4 style="padding: 2rem 0; border-bottom:1px solid black;">Đơn hàng</h4>
                                <table class="table table-bordered table-hover none">
                                    <thead>
                                        <tr style="font-weight: 500;text-align: center;">
                                            <td width="50px">STT</td>
                                            <td>Tên Sản Phẩm</td>
                                            <td>Số lượng</td>
                                            <td>Tổng tiền</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $count = 0;
                                        $total = 0;
                                        foreach ($selectedProducts as $item) {
                                            $total += $item['num'] * $item['price'];
                                            echo '
                                            <tr style="text-align: center;">
                                                <td width="50px">' . (++$count) . '</td>
                                                <td style="text-align:center; display:flex">
                                                    <img src="admin/product/' . $item['thumbnail'] . '" alt="" style="width: 50px;margin:0 1rem 0 1rem;"> <span>' . $item['title'] . '</span>
                                                </td>
                                                <td width="100px">' . $item['num'] . '</td>
                                                <td class="b-500 red">' . number_format($item['num'] * $item['price'], 0, ',', '.') . '<span> VNĐ</span></td>
                                            </tr>
                                            ';
                                            // Thêm hidden inputs để gửi dữ liệu sản phẩm qua form
                                            echo '<input type="hidden" name="selected_ids[]" value="' . $item['id'] . '">';
                                            echo '<input type="hidden" name="selected_nums[]" value="' . $item['num'] . '">';
                                        }
                                        ?>
                                    </tbody>
                                </table>
                                <p>Tổng đơn hàng: <span class="bold red"><?= number_format($total, 0, ',', '.') ?><span> VNĐ</span></span></p>
                                <button type="submit" class="btn btn-success">Đặt hàng</button>
                            </div>
                        </div>
                    </div>
                </form>
            </section>
        </main>
        <?php require_once('layout/footer.php'); ?>
    </div>
</body>
<style>
    .xemlai {
        font-size: 18px;
        font-weight: 500;
        color: blue;
    }
    .b-500 {
        font-weight: 500;
    }
    .bold {
        font-weight: bold;
    }
    .red {
        color: rgba(207, 16, 16, 0.815);
    }
</style>
</html>