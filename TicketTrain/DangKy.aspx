<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs"
Inherits="TicketTrain.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Đăng Ký</title>
    <link href="Assets/css/header.css" rel="stylesheet" />
    <link href="Assets/css/footer.css" rel="stylesheet" />
    <link href="Assets/css/login.css" rel="stylesheet" />
    <link href="Assets/css/main.css" rel="stylesheet" />
  </head>
  <body>
    <form id="formDangKy" runat="server">
      <div class="wrapped">
        <nav class="header-navbar">
          <div class="logo">
            <a href="index.aspx">
              <img src="Assets/img/logo.png" />
            </a>
          </div>
          <ul class="menu-list">
            <li class=""><a href="index.aspx">Trang chủ</a></li>
            <li><a href="#">Chuyến Đi</a></li>
            <li><a href="#">Tin Tức</a></li>
          </ul>
          <ul class="menu-list">
            <li><a class="login active" href="Login.aspx">Đăng nhập</a></li>
          </ul>
        </nav>
        <main>
          <div class="card">
            <div>
              <h2 class="title">Đăng Ký</h2>
              <p class="subtitle">
                Đã có tài khoản? <a href="Login.aspx"> Đăng Nhập</a>
              </p>
              <p class="or"><span>or</span></p>

              <div class="email-login">
                <label for="hoten"> <b>Họ Tên</b></label>
                <input
                  type="text"
                  placeholder="Nhập họ tên"
                  name="hoten" id="hoten"
                  class="mb-34"
                />
                <p class="error-message"></p>

                <label for="phoneNumber"> <b>Số ĐT</b></label>
                <input
                  type="text"
                  placeholder="Nhập SĐT của bạn"
                  name="phoneNumber"
                  id="phoneNumber"
                  class="mb-34"
                />
                <p class="error-message"></p>
                <label for="email"> <b>Email</b></label>
                <input
                  type="text"
                  placeholder="Nhập Email của bạn"
                  class="mb-34"
                  name="email" id="email"
                />
                <p class="error-message"></p>
                <label for="password"><b>Mật Khẩu</b></label>
                <input type="password" name="matkhau" id="matkhau" placeholder="Nhập mật khẩu" />
                <label for="nhaplai_matkhau"><b>Nhập Lại Mật Khẩu</b></label>
                <input
                  type="password"
                  placeholder="Nhập lại mật khẩu"
                  class="mb-34"
                  name="nhaplai_matkhau"
                  id="nhaplai_matkhau"
                />
                      <p class="error-message"></p>
              </div>
              <button class="cta-btn btn-dangky" id="btn_dangki" name="btn_dangki" value="dangki" type="submit">Đăng Ký</button>
              <a class="forget-pass" href="ForgotPass.aspx">Quên Mật Khẩu?</a>
            </div>
          </div>
        </main>
        <footer>
          <div class="container">
            <!--Bắt Đầu Nội Dung Giới Thiệu-->
            <div class="noi-dung about">
              <h2>Về Chúng Tôi</h2>
              <p>
                Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                Praesentium dolores alias ipsa vel hic tempore exercitationem
                ipsam explicabo repudiandae ut consectetur qui, earum at nostrum
                perspiciatis asperiores necessitatibus facilis esse. Lorem ipsum
                dolor sit amet consectetur adipisicing elit. Quia id possimus
                quibusdam nihil earum in provident enim animi commodi quisquam!
                Molestiae cupiditate mollitia pariatur error ea, debitis eaque
                quo dolorum.
              </p>
              <ul class="social-icon">
                <li>
                  <a href="#"><i class="fa fa-twitter"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fa fa-instagram"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fa fa-youtube"></i></a>
                </li>
              </ul>
            </div>
            <!--Kết Thúc Nội Dung Giới Thiệu-->
            <!--Bắt Đầu Nội Dung Đường Dẫn-->
            <div class="noi-dung links">
              <h2>Đường Dẫn</h2>
              <ul>
                <li><a href="#">Trang Chủ</a></li>
                <li><a href="#">Về Chúng Tôi</a></li>
                <li><a href="#">Thông Tin Liên Lạc</a></li>
                <li><a href="#">Dịch Vụ</a></li>
                <li><a href="#">Điều Kiện Chính Sách</a></li>
              </ul>
            </div>
            <!--Kết Thúc Nội Dung Đường Dẫn-->
            <!--Bắt Đâu Nội Dung Liên Hệ-->
            <div class="noi-dung contact">
              <h2>Thông Tin Liên Hệ</h2>
              <ul class="info">
                <li>
                  <span><i class="fa fa-map-marker"></i></span>
                  <span
                    >96 Định Công<br />
                    Phường Phương Liệt, Quận Thanh Xuân, Hà Nội<br />
                    Việt Nam</span
                  >
                </li>
                <li>
                  <span><i class="fa fa-phone"></i></span>
                  <p>
                    <a href="#">+84 123 456 789</a>
                    <br />
                    <a href="#">+84 987 654 321</a>
                  </p>
                </li>
                <li>
                  <span><i class="fa fa-envelope"></i></span>
                  <p><a href="#">DVA12345678@gmail.com</a></p>
                </li>
              </ul>
            </div>
            <!--Kết Thúc Nội Dung Liên Hệ-->
          </div>
        </footer>
      </div>
    </form>
    <script src="Assets/js/dangky.js"></script>
  </body>
</html>
