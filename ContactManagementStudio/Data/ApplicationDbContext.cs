using System;
using System.Collections.Generic;
using System.Text;
using ContactManagementStudio.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace ContactManagementStudio.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        
        public DbSet<Contact> Contacts { get; set; }
        public DbSet<Phone> ContactPhones { get; set; }

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        /// <summary>
        /// Sets the tables with their relations
        /// </summary>
        /// <param name="builder"></param>
        protected override void OnModelCreating(ModelBuilder builder)
        {
            
            base.OnModelCreating(builder);

            //-----------Contacts-----------
            builder.Entity<Contact>(entity =>
            {
                entity.ToTable("Contact");
                entity.HasKey(x => x.ID);

                entity.HasMany(c => c.ContactPhones)
                .WithOne(cP => cP.Contact);
            });

            //------------Phones------------
            builder.Entity<Phone>(entity =>
            {
                entity.ToTable("Phone");
                entity.HasKey(x => x.ID);
            });
        }
    }
}
