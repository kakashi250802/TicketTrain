<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChuyenDi.aspx.cs" MasterPageFile="~/layout.Master" Inherits="TicketTrain.ChuyenDi1" %>


    <asp:Content ContentPlaceHolderID="head" runat="server">
    <title>DVA - Web bán vé tàu</title>
    <link href="Assets/css/header.css" rel="stylesheet" />
    <link href="Assets/css/main.css" rel="stylesheet" />
    <link href="Assets/css/footer.css" rel="stylesheet" />
    <link href="Assets/font/boxicons-2.1.2/css/boxicons.min.css" rel="stylesheet" />
    <link href="Assets/css/grid.css" rel="stylesheet" />
    <link href="Assets/css/chuyendi.css" rel="stylesheet" />
    </asp:Content>
    <asp:Content ID="Content1" ContentPlaceHolderID="main" runat="server">
    <form id="chuyendiForm" runat="server">

    <div class="bg-main" >
      <div class="container">
          <div class="box booking-inf">
              <div class="breadcumb" id="controlPlace" runat="server">
  
              </div>
              <div class="dateStart">
                <div class="img">
                  <img src="Assets/img/datetime.svg" />
                </div>
                <div class="form-main" >
                  <input type="date" id="controlTimeBooking" name="timeBooking" runat="server"/>
                </div>
              </div>
          </div>
          <div class="box">
              <div class="row">
                  <div class="col-3 " id="filter-col">
                    <div class="filter-col">

                      <div class="box filter-toggle-box">
                          <button class="btn-flat btn-hover" id="filter-close">close</button>
                      </div>
                      <div class="box">
                          <span class="filter-header">Loại vé</span>
                          <ul class="filter-list">
                            <li>
                                <div class="group-checkbox">
                                    <input type="checkbox" name="" id="status1">
                                    <label for="status1">
                                        Giá rẻ
                                        <i class='bx bx-check'></i>
                                    </label>
                                </div>
                            </li>
                            <li>
                                <div class="group-checkbox">
                                    <input type="checkbox" name="" id="status2">
                                    <label for="status2">
                                        Bình thường
                                        <i class='bx bx-check'></i>
                                    </label>
                                </div>
                            </li>
                            <li>
                                <div class="group-checkbox">
                                    <input type="checkbox" name="" id="status3">
                                    <label for="status3">
                                        Thương gia
                                        <i class='bx bx-check'></i>
                                    </label>
                                </div>
                            </li>
                        </ul>
                      </div>
                      <div class="box">
                          <span class="filter-header">
                              Khoảng giá
                          </span>
                          <div class="price-range">
                              <input type="text" name="" id="">
                              <span>-</span>
                              <input type="text" name="" id="">
                          </div>
                      </div>
                     
                      <div class="box">
                          <span class="filter-header">
                              Hãng tàu
                          </span>


                          <ul class="filter-list">
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="brand1">
                                      <label for="brand1">
                                              Sài Gòn
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="brand2">
                                      <label for="brand2">
                                              ĐSVN
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="brand3">
                                      <label for="brand3">
                                              Vinh
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="brand4">
                                      <label for="brand4">
                                              Hà Nội
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                              <li>
                                  <div class="group-checkbox">
                                      <input type="checkbox" name="" id="brand5">
                                      <label for="brand5">
                                              Hải Dương
                                              <i class='bx bx-check'></i>
                                          </label>
                                  </div>
                              </li>
                          </ul>

                      </div>
                      <div class="box">
                        <button class="btn-flat btn-hover" type="submit" name="savefillter">Xác Nhận</button>
                        <button class="btn-flat btn-hover" type="reset" name="resetfillter">Hủy</button>
                      </div>
                  </div>
                </div>

                  <div class="col-9 col-md-12">
                      <div class="box filter-toggle-box">
                          <button class="btn-flat btn-hover" id="filter-toggle">filter</button>
                      </div>
                      <div class="box">
                          <div class="row" id="ControlTrips" runat="server">

                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
    </form>
</asp:Content>