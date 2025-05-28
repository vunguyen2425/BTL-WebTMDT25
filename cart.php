<?php
require_once('database/dbhelper.php');
require_once('utils/utility.php');

$cart = [];
if (isset($_COOKIE['cart'])) {
    $json = $_COOKIE['cart'];
    $cart = json_decode($json, true);
}
$idList = [];
foreach ($cart as $item) {
    $idList[] = $item['id'];
}
if (count($idList) > 0) {
    $idList = implode(',', $idList); 
    $sql = "select * from product where id in ($idList)";
    $cartList = executeResult($sql);
} else {
    $cartList = [];
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
    <title>Giỏ hàng</title>
</head>

<body>
    <div id="wrapper">
        <?php require_once('layout/header.php'); ?>
        <main style="padding-bottom: 4rem; margin-top: 100px">
            <section class="cart">
                <div class="container-top">
                    <div class="panel panel-primary">
                        <div class="panel-heading" style="padding: 1rem 0;">
                            <ul class="nav nav-tabs">
                                <li class="nav-item">
                                    <a class="nav-link active" href="cart.php">Giỏ hàng</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="history.php">Lịch sử mua hàng</a>
                                </li>
                            </ul>
                            <h2 style="padding-top:2rem">Giỏ hàng</h2>
                        </div>
                        <div class="panel-body"></div>
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr style="font-weight: 500;text-align: center;">
                                    <td width="50px"><input type="checkbox" id="select-all"></td>
                                    <td width="50px">STT</td>
                                    <td>Ảnh</td>
                                    <td>Tên Sản Phẩm</td>
                                    <td>Giá</td>
                                    <td>Số lượng</td>
                                    <td>Tổng tiền</td>
                                    <td width="50px"></td>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $count = 0;
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
                                    echo '
                                    <tr style="text-align: center;">
                                        <td width="50px"><input type="checkbox" class="product-checkbox" data-id="' . $item['id'] . '" data-price="' . $num * $item['price'] . '"></td>
                                        <td width="50px">' . (++$count) . '</td>
                                        <td style="text-align:center">
                                            <img src="admin/product/' . $item['thumbnail'] . '" alt="" style="width: 50px">
                                        </td>
                                        <td>' . $item['title'] . '</td>
                                        <td class="b-500 red">' . number_format($item['price'], 0, ',', '.') . '<span> VNĐ</span></td>
                                        <td width="150px">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <button class="btn btn-outline-secondary" type="button" onclick="updateCart(' . $item['id'] . ', ' . ($num + 1) . ')">+</button>
                                                </div>
                                                <input type="text" class="form-control text-center" value="' . $num . '" readonly>
                                                <div class="input-group-append">
                                                    <button class="btn btn-outline-secondary" type="button" onclick="updateCart(' . $item['id'] . ', ' . ($num - 1) . ')">−</button>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="b-500 red product-total">' . number_format($num * $item['price'], 0, ',', '.') . '<span> VNĐ</span></td>
                                        <td>
                                            <button class="btn btn-danger" onclick="deleteCart(' . $item['id'] . ')">Xoá</button>
                                        </td>
                                    </tr>
                                    ';
                                }
                                ?>
                            </tbody>
                        </table>
                        <p>Tổng đơn hàng: <span class="red bold" id="total-amount"><?= number_format($total, 0, ',', '.') ?><span> VNĐ</span></span></p>
                        <a href="#" onclick="proceedToCheckout()"><button class="btn btn-success">Thanh toán</button></a>
                    </div>
                </div>
            </section>
        </main>
        <?php require_once('layout/footer.php'); ?>
    </div>

    <script type="text/javascript">
        function deleteCart(id) {
            $.post('api/cookie.php', {
                'action': 'delete',
                'id': id
            }, function(data) {
                location.reload();
            });
        }

        function updateCart(id, num) {
            if (num < 1) num = 1;
            console.log("Gửi request update: id=" + id + ", num=" + num);
            $.post('api/cookie.php', {
                'action': 'update',
                'id': id,
                'num': num
            })
            .done(function(data) {
                console.log("Thành công:", data);
                location.reload();
            })
            .fail(function(error) {
                console.error("Lỗi:", error.responseText);
                alert("Có lỗi khi cập nhật giỏ hàng!");
            });
        }

        function proceedToCheckout() {
            const checkboxes = document.querySelectorAll('.product-checkbox:checked');
            const selectedItems = Array.from(checkboxes).map(cb => {
                const id = cb.getAttribute('data-id');
                const price = parseInt(cb.getAttribute('data-price'));
                return { id, price };
            });

            if (selectedItems.length === 0) {
                alert('Vui lòng chọn ít nhất một sản phẩm để thanh toán.');
                return false;
            }

            // Lấy số lượng từ cookie để gửi kèm
            const cart = <?php echo json_encode($cart); ?>;
            const selectedProducts = selectedItems.map(item => {
                const cartItem = cart.find(c => c.id == item.id);
                return {
                    id: item.id,
                    num: cartItem ? cartItem.num : 1
                };
            });

            // Tạo query string với id và số lượng
            const queryString = selectedProducts.map(item => `id[]=${item.id}&num[]=${item.num}`).join('&');
            window.location.href = `checkout.php?${queryString}`;
            return true;
        }

        function updateTotal() {
            let total = 0;
            document.querySelectorAll('.product-checkbox:checked').forEach(cb => {
                total += parseInt(cb.getAttribute('data-price'));
            });
            document.getElementById('total-amount').innerHTML = `${new Intl.NumberFormat('vi-VN').format(total)}<span> VNĐ</span>`;
        }

        document.getElementById('select-all').addEventListener('change', function() {
            const isChecked = this.checked;
            document.querySelectorAll('.product-checkbox').forEach(cb => {
                cb.checked = isChecked;
            });
            updateTotal();
        });

        document.querySelectorAll('.product-checkbox').forEach(cb => {
            cb.addEventListener('change', function() {
                updateTotal();
                const allChecked = document.querySelectorAll('.product-checkbox').length === document.querySelectorAll('.product-checkbox:checked').length;
                document.getElementById('select-all').checked = allChecked;
            });
        });

        // Initial total calculation
        updateTotal();
    </script>

</body>
<style>
    .b-500 {
        font-weight: 500;
    }
    .bold {
        font-weight: bold;
    }
    .red {
        color: rgba(207, 16, 16, 0.815);
    }
    .input-group {
        width: 120px;
        margin: 0 auto;
    }
    .input-group .form-control {
        height: calc(1.5em + .75rem + 2px);
    }
    .input-group-prepend, .input-group-append {
        width: 30px;
    }
    .input-group-prepend button, .input-group-append button {
        padding: 0;
        width: 100%;
    }
</style>

</html>