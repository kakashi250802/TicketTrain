using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TicketTrain
{
    public class Member
    {
        string name;
        string nickName;
        string phoneNumber;
        int id;
        string pass;
        int loginFail;

        public string Name { get => name; set => name = value; }
        public string NickName { get => nickName; set => nickName = value; }
        public string PhoneNumber { get => phoneNumber; set => phoneNumber = value; }
        public int Id { get => id; set => id = value; }
        public string Pass { get => pass; set => pass = value; }
        public int LoginFail { get => loginFail; set => loginFail = value; }
    }
}