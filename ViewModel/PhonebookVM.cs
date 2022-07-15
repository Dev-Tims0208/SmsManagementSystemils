using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TryLogin.Models;

namespace TryLogin.ViewModel
{
    public class PhonebookVM
    {
        public IEnumerable<CgppPhonebook> PhonebookList { get; set; }
        public CgppPhonebook Phonebook { get; set; }
    }
}