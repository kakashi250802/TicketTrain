using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TicketTrain
{
    public class Search
    {
        string  placeStart;
        string placeEnd;
        string date;
        public string PlaceStart { get => placeStart; set => placeStart = value; }
        public string PlaceEnd { get => placeEnd; set => placeEnd = value; }
        public string Date { get => date; set => date = value; }
    }
}