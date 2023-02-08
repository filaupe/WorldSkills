﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Session4.Infra.Models;

public partial class CancellationPolicy
{
    [Key]
    public long ID { get; set; }

    public Guid GUID { get; set; }

    [Required]
    [StringLength(100)]
    [Unicode(false)]
    public string Name { get; set; }

    [Column(TypeName = "decimal(5, 2)")]
    public decimal Commission { get; set; }

    [InverseProperty("CancellationPolicy")]
    public virtual ICollection<CancellationRefundFee> CancellationRefundFees { get; } = new List<CancellationRefundFee>();

    [InverseProperty("CancellationPolicy")]
    public virtual ICollection<ItemPrice> ItemPrices { get; } = new List<ItemPrice>();
}