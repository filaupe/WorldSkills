﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Session4.Infra.Models;

public partial class Score
{
    [Key]
    public long ID { get; set; }

    public Guid GUID { get; set; }

    [Required]
    [StringLength(50)]
    public string Name { get; set; }

    [InverseProperty("Score")]
    public virtual ICollection<ItemScore> ItemScores { get; } = new List<ItemScore>();
}