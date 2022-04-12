<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChuyenDi.aspx.cs" Inherits="TicketTrain.ChuyenDi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DVA - Web bán vé tàu</title>
    <link href="Assets/css/header.css" rel="stylesheet" />
    <link href="Assets/css/main.css" rel="stylesheet" />
    <link href="Assets/css/footer.css" rel="stylesheet" />
    <link href="Assets/font/boxicons-2.1.2/css/boxicons.min.css" rel="stylesheet" />
    <link href="Assets/css/grid.css" rel="stylesheet" />
    <link href="Assets/css/chuyendi.css" rel="stylesheet" />
    <link href="Assets/css/chuyendi.css" rel="stylesheet" />
</head>
<body>
    <form id="chuyendiForm" runat="server">
<div class="wrapped">
            <nav class="header-navbar">
                <div class="logo">
                    <a href="index.aspx">
                    <img src="Assets/img/logo.png" />
                    </a>
                </div>
                <ul class="menu-list">
                <li ><a href="index.aspx">Trang chủ</a></li>
                <li class="active"><a href="chuyenDi.aspx">Chuyến Đi</a></li>
                <li ><a href="TinTuc.html">Tin Tức</a></li>
                </ul>
                <ul class="menu-list">
                    <li><a class="login" href="Login.aspx">Đăng nhập</a></li>

                </ul>
            </nav>
            <!-- products content -->
    <div class="bg-main">
      <div class="container">
          <div class="box">
              <div class="breadcumb">
                  <a href="./index.html">home</a>
                  <span><i class='bx bxs-chevrons-right' ></i></span>
                  <a href="./products.html">all products</a>
              </div>
          </div>
          <div class="box">
              <div class="row">
                  <div class="col-3 filter-col" id="filter-col">
                      <div class="box filter-toggle-box">
                          <button class="btn-flat btn-hover" id="filter-close">close</button>
                      </div>
                      <div class="box">
                          <span class="filter-header">Categories</span>
                          <ul class="filter-list">
                              <li><a href="#">Wireless</a></li>
                              <li><a href="#">In-ear headphone</a></li>
                              <li><a href="#">Over-ear headphone</a></li>
                              <li><a href="#">Sport headphone</a></li>
                          </ul>
                      </div>
                      <div class="box">
                          <span class="filter-header">
                              Price
                          </span>
                          <div class="price-range">
                              <input type="text" name="" id="">
                              <span>-</span>
                              <input type="text" name="" id="">
                          </div>
                      </div>
                      <div class="box">
                          <ul class="filter-list">
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="status1">
                                      <label for="status1">
                                          On sale
                                          <i class='bx bx-check'></i>
                                      </label>
                                  </div>
                              </li>
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="status2">
                                      <label for="status2">
                                          In stock
                                          <i class='bx bx-check'></i>
                                      </label>
                                  </div>
                              </li>
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="status3">
                                      <label for="status3">
                                          Featured
                                          <i class='bx bx-check'></i>
                                      </label>
                                  </div>
                              </li>
                          </ul>
                      </div>
                      <div class="box">
                          <span class="filter-header">
                              Brands
                          </span>


                          <ul class="filter-list">
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="brand1">
                                      <label for="brand1">
                                              JBL
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="brand2">
                                      <label for="brand2">
                                              Beat
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="brand3">
                                      <label for="brand3">
                                              Logitech
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="brand4">
                                      <label for="brand4">
                                              Samsung
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="brand5">
                                      <label for="brand5">
                                              Sony
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                          </ul>

                      </div>
                      <div class="box">
                          <span class="filter-header">
                              Colors
                          </span>


                          <ul class="filter-list">
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="color1">
                                      <label for="color1">
                                              Red
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="color2">
                                      <label for="color2">
                                          Blue
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="color3">
                                      <label for="color3">
                                             White
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="color4">
                                      <label for="color4">
                                         Pink
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="color5">
                                      <label for="color5">
                                          Yellow
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                          </ul>

                      </div>
                      <div class="box">
                          <span class="filter-header">
                              Colors
                          </span>
                          <ul class="filter-list">
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="star1">
                                      <label for="star1">
                                              <span class="rating">
                                                  <i class='bx bxs-star'></i>
                                                  <i class='bx bxs-star'></i>
                                                  <i class='bx bxs-star'></i>
                                                  <i class='bx bxs-star'></i>
                                                  <i class='bx bxs-star'></i>
                                              </span>
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="star2">
                                      <label for="star2">
                                              <span class="rating">
                                                  <i class='bx bxs-star'></i>
                                                  <i class='bx bxs-star'></i>
                                                  <i class='bx bxs-star'></i>
                                                  <i class='bx bxs-star'></i>
                                                  <i class='bx bx-star' ></i>
                                              </span>
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="star3">
                                      <label for="star3">
                                              <span class="rating">
                                                  <i class='bx bxs-star'></i>
                                                  <i class='bx bxs-star'></i>
                                                  <i class='bx bxs-star'></i>
                                                  <i class='bx bx-star' ></i>
                                                  <i class='bx bx-star' ></i>
                                              </span>
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="star4">
                                      <label for="star4">
                                              <span class="rating">
                                                  <i class='bx bxs-star'></i>
                                                  <i class='bx bxs-star'></i>
                                                  <i class='bx bx-star' ></i>
                                                  <i class='bx bx-star' ></i>
                                                  <i class='bx bx-star' ></i>
                                              </span>
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="star5">
                                      <label for="star5">
                                              <span class="rating">
                                                  <i class='bx bxs-star'></i>
                                                  <i class='bx bx-star' ></i>
                                                  <i class='bx bx-star' ></i>
                                                  <i class='bx bx-star' ></i>
                                                  <i class='bx bx-star' ></i>
                                              </span>
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                          </ul>

                      </div>
                  </div>
                  <div class="col-9 col-md-12">
                      <div class="box filter-toggle-box">
                          <button class="btn-flat btn-hover" id="filter-toggle">filter</button>
                      </div>
                      <div class="box">
                          <div class="row" id="products"></div>
                      </div>
                      <div class="box">
                          <div class="pagination">
                              <li><a href="#"><i class='bx bxs-chevron-left'></i></a></li>
                              <li><a href="#" class="active">1</a></li>
                              <li><a href="#">2</a></li>
                              <li><a href="#">3</a></li>
                              <li><a href="#">4</a></li>
                              <li><a href="#">5</a></li>
                              <li><a href="#"><i class='bx bxs-chevron-right'></i></a></li>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
            <footer>
                <div class="container">
                    <!--Bắt Đầu Nội Dung Giới Thiệu-->
                    <div class="noi-dung about">
                        <h2>Về Chúng Tôi</h2>
                        <p>
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Praesentium dolores alias ipsa vel hic
                tempore exercitationem ipsam explicabo repudiandae ut consectetur qui, earum at nostrum perspiciatis
                asperiores necessitatibus facilis esse.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia id possimus quibusdam nihil earum in
                provident enim animi commodi quisquam! Molestiae cupiditate mollitia pariatur error ea, debitis
                eaque quo dolorum.
                        </p>
                        <ul class="social-icon">
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="#"><i class="fa fa-youtube"></i></a></li>
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
                                <span>96 Định Công<br />
                                    Phường Phương Liệt, Quận Thanh Xuân, Hà Nội<br />
                                    Việt Nam</span>
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
</body>
</html>
