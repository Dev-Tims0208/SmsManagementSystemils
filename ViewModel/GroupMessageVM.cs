using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TryLogin.Models;

namespace TryLogin.ViewModel
{
    public class GroupMessageVM
    {
        public IEnumerable<Draft> DraftList { get; set; }
        public Draft Draft { get; set; }

        public IEnumerable<CgppOffice> OfficeList { get; set; }
        public CgppOffice Office { get; set; }
        public IEnumerable<CgppPhonebook> PhonebookList { get; set; }
        public CgppPhonebook Phonebook { get; set; }
    }
}