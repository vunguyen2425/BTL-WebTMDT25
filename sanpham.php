<?php require('layout/header.php') ?>
<main>
    <div class="container">
        <div id="ant-layout">
        <section class="search-quan">
                <i class="fas fa-search"></i>
                <form action="sanpham.php" method="GET">
                    <input name="search" type="text" placeholder="Tìm sản phẩm">
                </form>
            </section>
        </div>
        <!-- END LAYOUT  -->
        <section class="main">
            <?php
            if (isset($_GET['page'])) {
                $page = trim(strip_tags($_GET['page']));
            } else {
                $page = "";
            }
            switch ($page) {
                case "sanpham":
                    require('menu-con/toanthan.php');
                    require('menu-con/mat.php');
                    require('menu-con/rangmieng.php');
                    require('menu-con/toc.php');
                    break;
                default:
                    break;
            }
            //switch
            if (isset($_GET['id_category'])) {
                $id_category = trim(strip_tags($_GET['id_category']));
            } else {
                $id_category = 0;
            }
            ?>
            <section class="recently">
                <div class="title">
                    <?php
                    $sql = "select * from category where id=$id_category";
                    $name = executeResult($sql);
                    foreach ($name as $ten) {
                        echo '<h1>' . $ten['name'] . '</h1>';
                    }
                    ?>
                </div>
                <div class="product-recently">
                    <div class="row">
                        <?php
                        $sql = "select * from product where id_category=$id_category";
                        $productList = executeResult($sql);
                        foreach ($productList as $item) {
                            echo '
                                <div class="col">
                                    <a href="details.php?id=' . $item['id'] . '">
                                        <img class="thumbnail" src="admin/product/' . $item['thumbnail'] . '" alt="">
                                        <div class="title">
                                            <p>' . $item['title'] . '</p>
                                        </div>
                                        <div class="price">
                                            <span>' . number_format($item['price'], 0, ',', '.') . ' VNĐ</span>
                                        </div>
                                        
                                    </a>
                                </div>
                                ';
                        }
                        ?>
                        <?php
                        if (isset($_GET['search'])) {
                            $search = $_GET['search'];
                            $sql = "SELECT * from product where title like '%$search%'";
                            $listSearch = executeResult($sql);
                            foreach ($listSearch as $item) {
                                echo '
                                <div class="col">
                                    <a href="details.php?id=' . $item['id'] . '">
                                        <img class="thumbnail" src="admin/product/' . $item['thumbnail'] . '" alt="">
                                        <div class="title">
                                            <p>' . $item['title'] . '</p>
                                        </div>
                                        <div class="price">
                                            <span>' . number_format($item['price'], 0, ',', '.') . ' VNĐ</span>
                                        </div>
                                        
                                    </a>
                                </div>
                                ';
                            }
                        }
                        ?>
                    </div>
                </div>
            </section>
        </section>
    </div>
    <style>
        section.main section.recently .title h1 {
            border-bottom: 1px solid rgb(35, 54, 30);
        }
    </style>
    <?php require('layout/footer.php') ?>