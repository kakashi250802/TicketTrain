<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/layout.Master" CodeBehind="index.aspx.cs" Inherits="TicketTrain.index" %>




    <asp:Content ContentPlaceHolderID="head" runat="server">
    <link href="Assets/css/header.css" rel="stylesheet" />
    <link href="Assets/css/main.css" rel="stylesheet" />
    <link href="Assets/css/footer.css" rel="stylesheet" />
    <link href="Assets/font/boxicons-2.1.2/css/boxicons.min.css" rel="stylesheet" />
    </asp:Content>

            <asp:Content ID="Content1" ContentPlaceHolderID="main" runat="server">
    <form id="form1" runat="server">
        <div class="wrapped">
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
        </div>
    </form>
            </asp:Content>

