﻿// <auto-generated />
using System;
using MPT_01_SEv1.Forms;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace MPT01SEv1.Forms.Migrations
{
    [DbContext(typeof(AppDbContext))]
    partial class AppDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "7.0.2")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("MPT_01_SEv1.Forms.Models.Department", b =>
                {
                    b.Property<int>("depid")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("depid"));

                    b.Property<int>("deptmgrid")
                        .HasColumnType("int");

                    b.Property<string>("deptname")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("depid");

                    b.ToTable("Departments");
                });

            modelBuilder.Entity("MPT_01_SEv1.Forms.Models.Employee", b =>
                {
                    b.Property<int>("empid")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("empid"));

                    b.Property<DateTime>("bornDate")
                        .HasColumnType("datetime2");

                    b.Property<int>("depid")
                        .HasColumnType("int");

                    b.Property<int?>("deptmgrid")
                        .HasColumnType("int");

                    b.Property<string>("deptname")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("empname")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("enterDate")
                        .HasColumnType("datetime2");

                    b.Property<int>("loginCount")
                        .HasColumnType("int");

                    b.Property<int?>("mgrid")
                        .HasColumnType("int");

                    b.Property<decimal>("salary")
                        .HasColumnType("decimal(18,2)");

                    b.HasKey("empid");

                    b.ToTable("Employees");
                });
#pragma warning restore 612, 618
        }
    }
}
