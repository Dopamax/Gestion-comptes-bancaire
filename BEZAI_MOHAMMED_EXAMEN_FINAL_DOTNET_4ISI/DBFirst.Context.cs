﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BEZAI_MOHAMMED_EXAMEN_FINAL_DOTNET_4ISI
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DBFirstContainer : DbContext
    {
        public DBFirstContainer()
            : base("name=DBFirstContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Client> ClientSet1 { get; set; }
        public virtual DbSet<Compte> CompteSet { get; set; }
        public virtual DbSet<Opération> OpérationSet { get; set; }
    }
}