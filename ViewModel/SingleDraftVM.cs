﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TryLogin.Models;

namespace TryLogin.ViewModel
{
    public class SingleDraftVM
    {
        public IEnumerable<Draft> DraftList { get; set; }
        public Draft Draft { get; set; }
        public IEnumerable<CgppPhonebook> PhonebookList { get; set; }
        public CgppPhonebook Phonebook { get; set; }
        public List<string> sendTo { get; set; }
    }
}