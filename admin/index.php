<?php require_once('database/dbhelper.php'); ?>
<!DOCTYPE html>
<html>
<head>
    <title>Thống Kê Dashboard</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.9.1/dist/chart.min.js"></script>
    <!-- Summernote -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div id="wrapper">
        <header>
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" href="index.php">Thống kê</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="category/index.php">Quản lý danh mục</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="product/">Quản lý sản phẩm</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="dashboard.php">Quản lý đơn hàng</a>
                </li>
            </ul>
        </header>
        <div class="container">
            <main>
                <h1 class="text-center mb-4">Bảng Thống Kê</h1>
                <section class="dashboard">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="sp">
                                <p>Sản phẩm</p>
                                <?php
                                $sql = "SELECT COUNT(*) as total FROM `product`";
                                $conn = mysqli_connect(HOST, USERNAME, PASSWORD, DATABASE);
                                $result = mysqli_query($conn, $sql);
                                $row = mysqli_fetch_assoc($result);
                                echo '<span>' . $row['total'] . '</span>';
                                ?>
                                <p><a href="product/">xem chi tiết➜</a></p>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="sp kh">
                                <p>Khách hàng</p>
                                <?php
                                $sql = "SELECT COUNT(*) as total FROM `user`";
                                $result = mysqli_query($conn, $sql);
                                $row = mysqli_fetch_assoc($result);
                                echo '<span>' . $row['total'] . '</span>';
                                ?>
                                <p><a href="">xem chi tiết➜</a></p>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="sp dm">
                                <p>Danh mục</p>
                                <?php
                                $sql = "SELECT COUNT(*) as total FROM `category`";
                                $result = mysqli_query($conn, $sql);
                                $row = mysqli_fetch_assoc($result);
                                echo '<span>' . $row['total'] . '</span>';
                                ?>
                                <p><a href="category/">xem chi tiết➜</a></p>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="sp dh">
                                <p>Đơn hàng</p>
                                <?php
                                $sql = "SELECT COUNT(*) as total FROM `order_details`";
                                $result = mysqli_query($conn, $sql);
                                $row = mysqli_fetch_assoc($result);
                                echo '<span>' . $row['total'] . '</span>';
                                ?>
                                <p><a href="dashboard.php">xem chi tiết➜</a></p>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- Doanh thu -->
                <section class="revenue mt-5">
                    <h4>Doanh Thu</h4>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Tổng Doanh Thu</h5>
                                    <?php
                                    $sql = "SELECT SUM(od.num * od.price) as total_revenue 
                                            FROM order_details od 
                                            JOIN orders o ON od.order_id = o.id 
                                            WHERE od.status != 'Đã hủy'";
                                    $result = mysqli_query($conn, $sql);
                                    $row = mysqli_fetch_assoc($result);
                                    $total_revenue = $row['total_revenue'] ?? 0;
                                    echo '<p class="card-text red b-500">' . number_format($total_revenue, 0, ',', '.') . ' VNĐ</p>';
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Doanh Thu Đã Nhận</h5>
                                    <?php
                                    $sql = "SELECT SUM(od.num * od.price) as received_revenue 
                                            FROM order_details od 
                                            JOIN orders o ON od.order_id = o.id 
                                            WHERE od.status = 'Đã nhận hàng'";
                                    $result = mysqli_query($conn, $sql);
                                    $row = mysqli_fetch_assoc($result);
                                    $received_revenue = $row['received_revenue'] ?? 0;
                                    echo '<p class="card-text green b-500">' . number_format($received_revenue, 0, ',', '.') . ' VNĐ</p>';
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Đơn Hàng Đã Hủy</h5>
                                    <?php
                                    $sql = "SELECT COUNT(*) as canceled_orders 
                                            FROM order_details 
                                            WHERE status = 'Đã hủy'";
                                    $result = mysqli_query($conn, $sql);
                                    $row = mysqli_fetch_assoc($result);
                                    echo '<p class="card-text red b-500">' . $row['canceled_orders'] . '</p>';
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- Biểu đồ -->
                <section class="charts mt-5">
                    <h4>Biểu Đồ Thống Kê</h4>
                    <div class="row">
                        <div class="col-md-6">
                            <canvas id="revenueChart"></canvas>
                        </div>
                        <div class="col-md-6">
                            <canvas id="categoryChart"></canvas>
                        </div>
                    </div>
                </section>

                <!-- Đơn hàng mới -->
                <section class="new-order mt-5">
                    <h4>Đơn Hàng Mới</h4>
                    <table class="table table-bordered">
                        <thead>
                            <tr class="bold">
                                <td>STT</td>
                                <td>Tên</td>
                                <td>Tên sản phẩm/Số lượng</td>
                                <td>Giá sản phẩm</td>
                                <td>Địa chỉ</td>
                                <td>Số điện thoại</td>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            try {
                                $page = isset($_GET['page']) ? $_GET['page'] : 1;
                                $limit = 10;
                                $start = ($page - 1) * $limit;

                                $sql = "SELECT * FROM orders o
                                        JOIN order_details od ON od.order_id = o.id
                                        JOIN product p ON p.id = od.product_id
                                        ORDER BY o.order_date DESC LIMIT $start, $limit";
                                $order_details_List = executeResult($sql);
                                $count = 0;
                                foreach ($order_details_List as $item) {
                                    echo '
                                        <tr style="text-align: center;">
                                            <td>' . (++$count) . '</td>
                                            <td>' . $item['fullname'] . '</td>
                                            <td>' . $item['title'] . '<br>(<strong>' . $item['num'] . '</strong>)</td>
                                            <td class="b-500 red">' . number_format($item['num'] * $item['price'], 0, ',', '.') . '<span> VNĐ</span></td>
                                            <td>' . $item['address'] . '</td>
                                            <td class="b-500">' . $item['phone_number'] . '</td>
                                        </tr>
                                    ';
                                }
                            } catch (Exception $e) {
                                die("Lỗi thực thi sql: " . $e->getMessage());
                            }
                            ?>
                        </tbody>
                    </table>
                </section>
            </main>
        </div>
    </div>

    <script>
        // Biểu đồ đường - Doanh thu theo ngày
        <?php
        $sql = "SELECT DATE(o.order_date) as order_day, SUM(od.num * od.price) as daily_revenue
                FROM order_details od
                JOIN orders o ON od.order_id = o.id
                WHERE od.status != 'Đã hủy'
                GROUP BY DATE(o.order_date)
                ORDER BY order_day";
        $result = mysqli_query($conn, $sql);
        $revenue_labels = [];
        $revenue_data = [];
        while ($row = mysqli_fetch_assoc($result)) {
            $revenue_labels[] = $row['order_day'];
            $revenue_data[] = $row['daily_revenue'];
        }
        ?>
        const revenueCtx = document.getElementById('revenueChart').getContext('2d');
        new Chart(revenueCtx, {
            type: 'line',
            data: {
                labels: <?php echo json_encode($revenue_labels); ?>,
                datasets: [{
                    label: 'Doanh thu (VNĐ)',
                    data: <?php echo json_encode($revenue_data); ?>,
                    borderColor: 'rgba(75, 192, 192, 1)',
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    fill: true,
                }]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true,
                        title: {
                            display: true,
                            text: 'Doanh thu (VNĐ)'
                        }
                    },
                    x: {
                        title: {
                            display: true,
                            text: 'Ngày'
                        }
                    }
                }
            }
        });

        // Biểu đồ tròn - Tỷ lệ sản phẩm theo danh mục
        <?php
        $sql = "SELECT c.name, SUM(od.num) as total_sold
                FROM order_details od
                JOIN product p ON od.product_id = p.id
                JOIN category c ON p.id_category = c.id
                WHERE od.status != 'Đã hủy'
                GROUP BY c.id";
        $result = mysqli_query($conn, $sql);
        $category_labels = [];
        $category_data = [];
        while ($row = mysqli_fetch_assoc($result)) {
            $category_labels[] = $row['name'];
            $category_data[] = $row['total_sold'];
        }
        ?>
        const categoryCtx = document.getElementById('categoryChart').getContext('2d');
        new Chart(categoryCtx, {
            type: 'pie',
            data: {
                labels: <?php echo json_encode($category_labels); ?>,
                datasets: [{
                    label: 'Số lượng bán ra',
                    data: <?php echo json_encode($category_data); ?>,
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.8)',
                        'rgba(54, 162, 235, 0.8)',
                        'rgba(255, 206, 86, 0.8)',
                        'rgba(75, 192, 192, 0.8)',
                    ],
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Tỷ lệ sản phẩm bán ra theo danh mục'
                    }
                }
            }
        });
    </script>
</body>
<style>
    #wrapper {
        padding-bottom: 5rem;
    }
    .b-500 {
        font-weight: 500;
    }
    .red {
        color: red;
    }
    .green {
        color: green;
    }
    .card {
        border-radius: 10px;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }
    .card-title {
        font-size: 1.2rem;
        font-weight: bold;
    }
    .card-text {
        font-size: 1.5rem;
    }
</style>
</html>