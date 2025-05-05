<?php require('layout/header.php') ?>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&display=swap');
    main {
        font-family: "Encode Sans SC", sans-serif;
    }

    .row img {
        max-width: 100%;
    }
    p {
    font-family: "Dancing Script", cursive;
    font-optical-sizing: auto;
    font-weight: weight;
    font-style: normal;
    font-size: 20px;
    }

</style>
<main>
    <div class="container">
        <div id="ant-layout">
            <section class="search-quan">
                <i class="fas fa-search"></i>
                <form action="thucdon.php" method="GET">
                    <input name="search" type="text" placeholder="Tìm sản phẩm">
                </form>
            </section>
            <section class="main">
                <div class="row">
                    <h3>Mục đích của Male Shop</h3>
                    <p>Chào mừng bạn đến với Male Shop, một trang web được thiết kế dành riêng cho nam giới.<br>
                    Chúng tôi hiểu tầm quan trọng của những người đàn ông thời hiện đại để 
                    trông đẹp nhất mỗi ngày! 
                    Vì vậy, chúng tôi tự hào cung cấp nhiều sản phẩm 
                    dành cho nam giới đa dạng và tốt nhất tại Việt Nam, độc quyền tại 
                    cửa hàng trực tuyến của chúng tôi. <br>
                    Cho dù bạn đang tìm kiếm một chút phấn khích dưới dạng kem che khuyết điểm dành cho nam giới hay có lẽ là một 
                    vẻ ngoài hoàn toàn tươi mới và lịch sự với sự trợ giúp của kem nền dành cho nam 
                    giới, bạn chắc chắn sẽ tìm thấy sản phẩm phù hợp với mình trên mạng.</p>
                </div>
                <div class="row">
                    <h3>Thời gian hoạt động</h3>
                    <p>Chúng tôi hoạt động từ 8h đến 23h hằng ngày đối với của hàng offline<br>
                    Đối với hệ thống online hoạt động 24/7</p>
                </div>
                <div class="row">
                    <img src="images/main_logo.png" alt="" style="height: 500px; width:auto" >

                    <h3> Tại sao xu hướng sử dụng đồ trang điểm dành cho nam giới ngày càng tăng?</h3>
                    <p>Thứ nhất, lĩnh vực mỹ phẩm và chải chuốt dành cho nam giới đã được nghiên cứu rộng rãi trong thập kỷ qua. Năm 2010, blog chải chuốt trực tuyến rất nổi tiếng 'Ape To Gentlemen' đã thông báo rằng 73,6% nam giới thích mua sản phẩm chải chuốt của họ trực tuyến.</p>
                    <p>Thứ hai, sự chấp nhận ngày càng tăng của xã hội đối với nam giới trang điểm cũng rất đáng kể kể từ đầu thế kỷ này. Với những người nổi tiếng như Russell Brand, David Beckham và Mark Wright đều đã thú nhận sử dụng cách trang điểm dành cho nam giới để nâng cao sự hoàn hảo của họ, sự chú ý hiện nay đổ dồn vào những người đàn ông thời hiện đại để bắt tay vào hành động. </p>
                    <p>Thứ ba, sự phát triển của các thương hiệu trang điểm dành cho nam giới cũng thể hiện sự phổ biến của ngành này và tính “nam tính” tuyệt đối của nó. Với thương hiệu số 1 của Vương quốc Anh là MMUK MAN , theo sau là một loạt các sản phẩm táo bạo và táo bạo, giờ đây đã có một bước đi mới về thương hiệu trang điểm để thực sự đáp ứng nhu cầu của các quý ông.</p>
                    <p>Vì vậy, các bạn ơi, cho dù bạn đang muốn giải quyết nếp nhăn, che mụn, làm tươi tắn khuôn mặt, xóa bọng mắt hay thậm chí làm rám nắng cho khuôn mặt, thì khả năng thành công là vô tận với sự hỗ trợ chuyên nghiệp của cửa hàng trang điểm nam trực tuyến của chúng tôi.</p>
                </div>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.3794645233634!2d105.77766617532153!3d20.977420880659132!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3134532d16cb12ff%3A0x323c64a858ffc893!2zMzAgxJAuIFRoYW5oIELDrG5oLCBQLiBN4buZIExhbywgSMOgIMSQw7RuZywgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1708583734518!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/8pYPqZSgOeA?si=ebYPYS0wadtXgip7" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            </section>
        </div>
    </div>
</main>
<?php require('layout/footer.php') ?>