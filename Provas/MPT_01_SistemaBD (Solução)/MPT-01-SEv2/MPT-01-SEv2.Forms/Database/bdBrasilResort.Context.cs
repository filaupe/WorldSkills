﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MPT_01_SEv2.Forms.Database
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class bdBrasilResortEntities : DbContext
    {
        public bdBrasilResortEntities()
            : base("name=bdBrasilResortEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Departamentos> Departamentos { get; set; }
        public virtual DbSet<Funcionarios> Funcionarios { get; set; }
        public virtual DbSet<FuncionariosDepartamentos> FuncionariosDepartamentos { get; set; }
        public virtual DbSet<Logins> Logins { get; set; }
        public virtual DbSet<Nascimentos> Nascimentos { get; set; }
    }
}
