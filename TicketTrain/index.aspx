<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TicketTrain.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DVA - Web bán vé tàu</title>
    <link href="Assets/css/header.css" rel="stylesheet" />
    <link href="Assets/css/main.css" rel="stylesheet" />
    <link href="Assets/css/footer.css" rel="stylesheet" />
    <link href="Assets/font/boxicons-2.1.2/css/boxicons.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapped">
            <nav class="header-navbar">
                <div class="logo">
                    <a href="index.aspx">   
                    <img src="Assets/img/logo.png" />
                    </a>
                </div>
                <ul class="menu-list">
                <li class="active"><a href="index.aspx">Trang chủ</a></li>
                <li ><a href="chuyenDi.aspx">Chuyến Đi</a></li>
                <li ><a href="TinTuc.html">Tin Tức</a></li>
                </ul>
                <ul class="menu-list">
                    <li><a class="login" href="Login.aspx">Đăng nhập</a></li>

                </ul>
            </nav>
            <section class="sec1">
              <div class="form">

              <div class="form-booking">
                <div class="form-field">
                  <div class="img">
                    <img src="Assets/img/gasStart.svg" />
                  </div>
                  <div class="form-main">
                    <label for="">Từ</label>
                    <input class="first-place" list="listStationBegin">
                    <datalist class="trainStationBegin" id="listStationBegin">
                    <option value="Hà Nội">
                    <option value="Giáp Bát">
                    <option value="Văn Điển">
                    <option value="Thường Tín">
                    <option value="Chợ Tía">
                    <option value="Phú Xuyên">
                    <option value="Phủ Lý">
                    <option value="Vinh">
                    <option value="Đồng Hới">
                    <option value="Huế">
                    <option value="Đà Nẵng">
                    <option value="Sài Gòn">
                    </datalist>  
                  </div>
                  
                </div>
                <div class="form-field">
                  <div class="img">
                    <img src="Assets/img/gasend.svg" />
                  </div>
                  <div class="form-main">
                    <label for="" >Đến</label>
                  <input class="finally-place" list="listStationEnd">
                  <datalist class="trainStationEnd" id="listStationEnd">
                  <option value="Hà Nội">
                  <option value="Giáp Bát">
                  <option value="Văn Điển">
                  <option value="Thường Tín">
                  <option value="Chợ Tía">
                  <option value="Phú Xuyên">
                  <option value="Phủ Lý">
                  <option value="Vinh">
                  <option value="Đồng Hới">
                  <option value="Huế">
                  <option value="Đà Nẵng">
                  <option value="Sài Gòn">
                  </datalist>  
                </div>
                </div>
                <div class="form-field">
                  <div class="img">
                    <img src="Assets/img/datetime.svg" />
                  </div>
                  <div class="form-main">
                    <label for="">Thời gian</label>
                    <input type="date" />
                  </div>
                </div>
                <div class="form-field">

                  <button class="form-suibmit btn btn-xs btn-primary btn-search">
                    <span>tìm kiếm</span>
                    <i class='bx bx-search-alt'></i>
                  </button>
                </div>
              </div>
            </div>

            </section>
            <section class="content">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero, excepturi exercitationem accusamus a laudantium voluptatibus blanditiis. Beatae, sit vel id at rerum provident error. Sapiente quae quisquam et reiciendis eius magnam autem maiores, voluptatem commodi. Sit, repellat. Accusantium perspiciatis id ullam ab. Nisi placeat deleniti ullam autem laboriosam. Vel aperiam ipsum, dolorem earum eum cum veritatis deserunt at qui? Eveniet sed, ullam quia esse molestias a ex eius modi. Molestias, sapiente. Totam voluptatum facilis veritatis nesciunt ratione nihil eos sapiente impedit voluptatem in! Exercitationem in omnis dolorum explicabo dolore.</p>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero, excepturi exercitationem accusamus a laudantium voluptatibus blanditiis. Beatae, sit vel id at rerum provident error. Sapiente quae quisquam et reiciendis eius magnam autem maiores, voluptatem commodi. Sit, repellat. Accusantium perspiciatis id ullam ab. Nisi placeat deleniti ullam autem laboriosam. Vel aperiam ipsum, dolorem earum eum cum veritatis deserunt at qui? Eveniet sed, ullam quia esse molestias a ex eius modi. Molestias, sapiente. Beatae, sit vel id at rerum provident error. Sapiente quae quisquam et reiciendis eius magnam autem maiores, voluptatem commodi. Sit, repellat. Accusantium perspiciatis id ullam ab. Nisi placeat deleniti ullam autem laboriosam. Vel aperiam ipsum, dolorem earum eum cum veritatis deserunt at qui? Eveniet sed, ullam quia esse molestias a ex eius modi. Molestias, sapiente.</p>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero, excepturi exercitationem accusamus a laudantium voluptatibus blanditiis. Beatae, sit vel id at rerum provident error. Sapiente quae quisquam et reiciendis eius magnam autem maiores, voluptatem commodi. Sit, repellat. Accusantium perspiciatis id ullam ab. Nisi placeat deleniti ullam autem laboriosam. Vel aperiam ipsum, dolorem earum eum cum veritatis deserunt at qui? Eveniet sed, ullam quia esse molestias a ex eius modi. Molestias, sapiente. Beatae, sit vel id at rerum provident error. Sapiente quae quisquam et reiciendis eius magnam autem maiores, voluptatem commodi. Sit, repellat. Accusantium perspiciatis id ullam ab. Nisi placeat deleniti ullam autem laboriosam. Vel aperiam ipsum, dolorem earum eum cum veritatis deserunt at qui? Eveniet sed, ullam quia esse molestias a ex eius modi. Molestias, sapiente.</p>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero, excepturi exercitationem accusamus a laudantium voluptatibus blanditiis. Beatae, sit vel id at rerum provident error. Sapiente quae quisquam et reiciendis eius magnam autem maiores, voluptatem commodi. Sit, repellat. Accusantium perspiciatis id ullam ab. Nisi placeat deleniti ullam autem laboriosam. Vel aperiam ipsum, dolorem earum eum cum veritatis deserunt at qui? Eveniet sed, ullam quia esse molestias a ex eius modi. Molestias, sapiente. Beatae, sit vel id at rerum provident error. Sapiente quae quisquam et reiciendis eius magnam autem maiores, voluptatem commodi. Sit, repellat. Accusantium perspiciatis id ullam ab. Nisi placeat deleniti ullam autem laboriosam. Vel aperiam ipsum, dolorem earum eum cum veritatis deserunt at qui? Eveniet sed, ullam quia esse molestias a ex eius modi. Molestias, sapiente.</p>
            </section>
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
