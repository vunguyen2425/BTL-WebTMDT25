<footer>
  <div class="container">
    <div class="logo">
      <a href="index.php"><img src="/images/main_logo.png" alt=""></a>
      <div class="time" style="padding-left:50%;">
        <a href="https://time.is/Vietnam" id="time_is_link" rel="nofollow"></a>
        <span id="Vietnam_z418" style="font-size:40px"></span>
        <script src="//widget.time.is/t.js"></script>
        <script>
          time_is_widget.init({
            Vietnam_z418: {}
          });
        </script>
      </div>
    </div>
    <div class="link">
      <div class="col">
        <div><strong>Thông tin</strong></div>
        <p><b>Địa chỉ: </b> 30 Thanh Bình, Hà Đông, Hà Nội</p>
        <p><b>Số điện thoại: </b> 0983728928</p>
        <p><b>Email: </b> HTTTNhom@gmail.com</p>
      </div>
      <div class="col">
        <div><strong>Tài khoản</strong></div>
          <a href="about.php">Về chúng tôi</a>
          <a href="login/login.php">Tài khoản</a>
          <a href="cart.php">Đơn hàng</a>
        </div>
      <div class="col">
        <a href="">Trung tâm hỗ trợ</a>
        <a href="">Câu hỏi thường gặp</a>
      </div>
      <div class="icon">
        <a href="https://www.facebook.com/Alex0172" target="_blank"><i class="fab fa-facebook-square"></i></a>
        <a href="https://www.instagram.com/6.58pm__/" target="_blank"><i class="fab fa-instagram-square"></i></a>
        <a href="https://twitter.com/i/flow/login?redirect_after_login=%2FMMUK_MensMakeUp%2F" target="_blank"><i class="fab fa-twitter-square"></i></a>
      </div>
    </div>
    <div class="bottom">
      <a href=""><img src="images/icon/logo-playstore.svg" alt=""></a>
      <a href=""><img src="images/icon/logo-appstore.svg" alt=""></a>
      

    </div>
  </div>

  

  <!-- Include chatbox -->
  <?php include 'chatbox.php'; ?>

  


</footer>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
  footer {
    background-color: #7A7A7A;
    width: 100%;
    margin: 0px auto;
    margin-top: 1rem;
  }
  footer .container {
    width: 90%;
    margin: 0px auto;
    display: flex;
    flex-flow: column;
  }

  footer .container .logo {
    padding: 20px 0;
    border-bottom: 1px solid black;
    display: flex;
    flex-wrap: wrap-reverse;
  }
  footer .container .logo .time{
    color: black;
    font-family: "Bebas Neue", cursive;
  }

  footer .container .link {
    display: grid;
    grid-template-columns: auto auto auto auto;
    padding: 30px 0;
    border-bottom: 1px solid black;
  }

  footer .container .link .col a:hover {
    cursor: pointer;
    color: gray;
  }

  footer .container .link .col  {
    color: black;
    font-weight: bold;
    text-decoration: none;
    padding: 10px 0;
    font-family: "Encode Sans SC", sans-serif;
  }

  footer .container .link .icon  {
    padding: 10px 10px;
    color: black;
    font-weight: bold;
    text-decoration: none;
  }

  footer .container .link .icon i {
    font-size: 40px;
  }

  footer .container .link .col {
    display: flex;
    flex-flow: column;
  }

  footer .container .link .icon {
    display: flex;
  }

  footer .container .bottom {
    padding: 20px 0;
  }
  Strong{
    font-family: 'Oswald';
    font-size: 22px;
    font-weight: 700;
    text-transform: uppercase;
  }
  p a{
    font-family: "Roboto", sans-serif;
    font-weight: 100;
    color: black;
  }
  a.non-textdecoration{
    text-decoration: none;
}
a{
  color: black !important
}
a:hover{
  color:white !important;
  list-style: none;
}
</style>