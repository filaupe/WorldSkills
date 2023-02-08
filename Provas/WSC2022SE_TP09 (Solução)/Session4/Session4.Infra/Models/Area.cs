﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Session4.Infra.Models;

public partial class Area
{
    [Key]
    public long ID { get; set; }

    public Guid GUID { get; set; }

    [Required]
    [StringLength(50)]
    public string Name { get; set; }

    [InverseProperty("Area")]
    public virtual ICollection<Attraction> Attractions { get; } = new List<Attraction>();

    [InverseProperty("Area")]
    public virtual ICollection<Item> Items { get; } = new List<Item>();
}