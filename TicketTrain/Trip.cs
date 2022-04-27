using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TicketTrain
{
    public class Trip
    {
        int id;
        string tenTau;
        string gaTau;
        string ngayChay;
        string timeBatDau;
        string timeKetThuc;
        float vePhoThong;
        float veThuong;
        float veVip;
        bool ckTrong;

        public int Id { get => id; set => id = value; }
        public string TenTau { get => tenTau; set => tenTau = value; }
        public string TimeBatDau { get => timeBatDau; set => timeBatDau = value; }
        public string TimeKetThuc { get => timeKetThuc; set => timeKetThuc = value; }
        public float VePhoThong { get => vePhoThong; set => vePhoThong = value; }
        public float VeThuong { get => veThuong; set => veThuong = value; }
        public float VeVip { get => veVip; set => veVip = value; }
        public bool CkTrong { get => ckTrong; set => ckTrong = value; }
        public string GaTau { get => gaTau; set => gaTau = value; }
        public string NgayChay { get => ngayChay; set => ngayChay = value; }
    }
}