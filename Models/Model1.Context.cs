﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TryLogin.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ilsEntities : DbContext
    {
        public ilsEntities()
            : base("name=ilsEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Broadcaster> Broadcasters { get; set; }
        public virtual DbSet<CgppDivision> CgppDivisions { get; set; }
        public virtual DbSet<CgppDraft> CgppDrafts { get; set; }
        public virtual DbSet<CgppGroup> CgppGroups { get; set; }
        public virtual DbSet<CgppOffice> CgppOffices { get; set; }
        public virtual DbSet<CgppPhonebook> CgppPhonebooks { get; set; }
        public virtual DbSet<CgppRole> CgppRoles { get; set; }
        public virtual DbSet<Classification> Classifications { get; set; }
        public virtual DbSet<ConcernOffice> ConcernOffices { get; set; }
        public virtual DbSet<Draft> Drafts { get; set; }
        public virtual DbSet<EntryLog> EntryLogs { get; set; }
        public virtual DbSet<FormattedMessage> FormattedMessages { get; set; }
        public virtual DbSet<Grouping_cellnumbers> Grouping_cellnumbers { get; set; }
        public virtual DbSet<Group> Groups { get; set; }
        public virtual DbSet<Login> Logins { get; set; }
        public virtual DbSet<m_tblSMS_SystemFormat> m_tblSMS_SystemFormat { get; set; }
        public virtual DbSet<Menu> Menus { get; set; }
        public virtual DbSet<MobileNetProvider> MobileNetProviders { get; set; }
        public virtual DbSet<Municipality> Municipalities { get; set; }
        public virtual DbSet<OfficialsInformation> OfficialsInformations { get; set; }
        public virtual DbSet<OfficialsPosition> OfficialsPositions { get; set; }
        public virtual DbSet<Phonebook> Phonebooks { get; set; }
        public virtual DbSet<pilaKeyword> pilaKeywords { get; set; }
        public virtual DbSet<PrefixMobileNumber> PrefixMobileNumbers { get; set; }
        public virtual DbSet<rawMessage> rawMessages { get; set; }
        public virtual DbSet<SentItem> SentItems { get; set; }
        public virtual DbSet<SimCardInfo> SimCardInfoes { get; set; }
        public virtual DbSet<SMSFormat> SMSFormats { get; set; }
        public virtual DbSet<SmsPDU> SmsPDUs { get; set; }
        public virtual DbSet<SystemUser> SystemUsers { get; set; }
        public virtual DbSet<tblGender> tblGenders { get; set; }
        public virtual DbSet<tblStuffNumber> tblStuffNumbers { get; set; }
        public virtual DbSet<UnidentifiedNetwork> UnidentifiedNetworks { get; set; }
        public virtual DbSet<User> Users { get; set; }
    }
}