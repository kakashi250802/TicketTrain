using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace TicketTrain
{
    public partial class ChuyenDi1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //List<ChuyenDi> list = new List<ChuyenDi>();

            //read xml
            string path = "Trip.xml";
            List<Trip> list = new List<Trip>();
            string html2 = "";


            if (File.Exists(Server.MapPath(path)))
            {

                System.Xml.Serialization.XmlSerializer reader = new System.Xml.Serialization.XmlSerializer(typeof(List<Trip>));
                StreamReader file = new StreamReader(Server.MapPath(path));

                list = (List<Trip>)reader.Deserialize(file);
                list = list.OrderBy(trip => trip.Id).ToList();
                file.Close();
            }

            string html = "";
            if ((bool)Session["login"] == true && Session["placeStart"].ToString() != "")
            {
                html += "<a href=\"\">" + Session["placeStart"] + "</a>";
                html += "<span><i class=\"bx bxs-chevrons-right\" ></i></span>";
                html += "<a href=\"\">" + Session["placeEnd"] + "</a>";

                controlTimeBooking.Value = Session["TimeBooking"].ToString();

                controlPlace.InnerHtml = html;
                
                //render trip
                foreach (var trip in list)
                {
                    if (trip.NgayChay.ToString().IndexOf(Convert.ToDateTime(controlTimeBooking.Value).Day.ToString()) != -1 && trip.GaTau.ToString().IndexOf(Session["placeStart"].ToString()) != -1 && trip.GaTau.ToString().IndexOf(Session["placeEnd"].ToString()) != -1)
                    {
                        html2 += "<div class=\"col-12\">";
                        html2 += "<div class=\"box\">";
                        html2 += "<div class=\"train-item\">";
                        html2 += "<div>";
                        html2 += "<span class=\"filter-header\">" + trip.TenTau + "</span>";
                        html2 += "<div class=\"timetable\"><span class=\"start-time\">" + trip.TimeBatDau + "</span> - <span class=\"total-time\">3h20</span> - <span class=\"finish-time\">" + trip.TimeKetThuc + "</span></div>";
                        html2 += "</div>";
                        html2 += "<a href=\"\" class=\"btn\">Xem Thông tin chi Tiết</a>";
                        html2 += "</div>";
                        html2 += "<div class=\"row\">";
                        html2 += "<div class=\"col-4 col-md-6\">";
                        html2 += "<div class=\"box\">";
                        html2 += "<div class=\"head\">";
                        html2 += "<p>Hạng : <span>Phổ Thông</span></p>";
                        html2 += "<p>Giá : <span>" + trip.VePhoThong + " đ</span></p>";
                        html2 += "</div>";
                        html2 += "<div class=\"info\">";
                        html2 += "<p class=\"train-status\">" + trip.CkTrong == "true" ? "Có thể đặt Chỗ" : "Không thể đặt chỗ" + "</p>";
                        html2 += "</div>";
                        html2 += "<div><button class=\"btn-flat btn-hover\">Đặt Chỗ</button></div>";
                        html2 += "</div>";
                        html2 += "</div>";
                        html2 += "<div class=\"col-4 col-md-6\">";
                        html2 += "<div class=\"box\">";
                        html2 += "<div class=\"head\">";
                        html2 += "<p>Hạng : <span>vé Thường</span></p>";
                        html2 += "<p>Giá : <span>" + trip.VeThuong + " đ</span></p>";
                        html2 += "</div>";
                        html2 += "<div class=\"info\">";
                        html2 += "<p class=\"train-status\">" + trip.CkTrong == "true" ? "Có thể đặt Chỗ" : "Không thể đặt chỗ" + "</p>";
                        html2 += "</div>";
                        html2 += "<div><button class=\"btn-flat btn-hover\">Đặt Chỗ</button></div>";
                        html2 += "</div>";
                        html2 += "</div>";
                        html2 += "<div class=\"col-4 col-md-6\">";
                        html2 += "<div class=\"box\">";
                        html2 += "<div class=\"head\">";
                        html2 += "<p>Hạng : <span>vé vip</span></p>";
                        html2 += "<p>Giá : <span>" + trip.VeVip + " đ</span></p>";
                        html2 += "</div>";
                        html2 += "<div class=\"info\">";
                        html2 += "<p class=\"train-status\">" + trip.CkTrong == "true" ? "Có thể đặt Chỗ" : "Không thể đặt chỗ" + "</p>";
                        html2 += "</div>";
                        html2 += "<div><button class=\"btn-flat btn-hover\">Đặt Chỗ</button></div>";
                        html2 += "</div>";
                        html2 += "</div>";
                        html2 += "</div>";
                        html2 += "</div>";
                        html2 += "</div>";
                    }
                }
                ControlTrips.InnerHtml = html2;

            }
            else
            {
                html += "<a href=\"\">1111</a>";
                html += "<span><i class=\"bx bxs-chevrons-right\" ></i></span>";
                html += "<a href=\"\">1111</a>";
            controlPlace.InnerHtml = html;
                //render trip
                foreach (var trip in list)
                {
                    html2 += "<div class=\"col-12\">";
                    html2 += "<div class=\"box\">";
                    html2 += "<div class=\"train-item\">";
                    html2 += "<div>";
                    html2 += "<span class=\"filter-header\">" + trip.TenTau + "</span>";
                    html2 += "<div class=\"timetable\"><span class=\"start-time\">" + trip.TimeBatDau + "</span> - <span class=\"total-time\">3h20</span> - <span class=\"finish-time\">" + trip.TimeKetThuc + "</span></div>";
                    html2 += "</div>";
                    html2 += "<a href=\"\" class=\"btn\">Xem Thông tin chi Tiết</a>";
                    html2 += "</div>";
                    html2 += "<div class=\"row\">";
                    html2 += "<div class=\"col-4 col-md-6\">";
                    html2 += "<div class=\"box\">";
                    html2 += "<div class=\"head\">";
                    html2 += "<p>Hạng : <span>Phổ Thông</span></p>";
                    html2 += "<p>Giá : <span>" + trip.VePhoThong + " đ</span></p>";
                    html2 += "</div>";
                    html2 += "<div class=\"info\">";
                    html2 += "<p class=\"train-status\">" + trip.CkTrong == "true" ? "Có thể đặt Chỗ" : "Không thể đặt chỗ" + "</p>";
                    html2 += "</div>";
                    html2 += "<div><button class=\"btn-flat btn-hover\">Đặt Chỗ</button></div>";
                    html2 += "</div>";
                    html2 += "</div>";
                    html2 += "<div class=\"col-4 col-md-6\">";
                    html2 += "<div class=\"box\">";
                    html2 += "<div class=\"head\">";
                    html2 += "<p>Hạng : <span>vé Thường</span></p>";
                    html2 += "<p>Giá : <span>" + trip.VeThuong + " đ</span></p>";
                    html2 += "</div>";
                    html2 += "<div class=\"info\">";
                    html2 += "<p class=\"train-status\">" + trip.CkTrong == "true" ? "Có thể đặt Chỗ" : "Không thể đặt chỗ" + "</p>";
                    html2 += "</div>";
                    html2 += "<div><button class=\"btn-flat btn-hover\">Đặt Chỗ</button></div>";
                    html2 += "</div>";
                    html2 += "</div>";
                    html2 += "<div class=\"col-4 col-md-6\">";
                    html2 += "<div class=\"box\">";
                    html2 += "<div class=\"head\">";
                    html2 += "<p>Hạng : <span>vé vip</span></p>";
                    html2 += "<p>Giá : <span>" + trip.VeVip + " đ</span></p>";
                    html2 += "</div>";
                    html2 += "<div class=\"info\">";
                    html2 += "<p class=\"train-status\">" + trip.CkTrong == "true" ? "Có thể đặt Chỗ" : "Không thể đặt chỗ" + "</p>";
                    html2 += "</div>";
                    html2 += "<div><button class=\"btn-flat btn-hover\">Đặt Chỗ</button></div>";
                    html2 += "</div>";
                    html2 += "</div>";
                    html2 += "</div>";
                    html2 += "</div>";
                    html2 += "</div>";
                }
                ControlTrips.InnerHtml = html2;
            }

 

        }
    }
}