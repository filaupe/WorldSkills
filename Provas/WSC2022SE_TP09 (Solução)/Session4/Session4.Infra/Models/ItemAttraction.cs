﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Session4.Infra.Models;

public partial class ItemAttraction
{
    [Key]
    public long ID { get; set; }

    public Guid GUID { get; set; }

    public long ItemID { get; set; }

    public long AttractionID { get; set; }

    [Column(TypeName = "decimal(5, 1)")]
    public decimal? Distance { get; set; }

    public long? DurationOnFoot { get; set; }

    public long? DurationByCar { get; set; }

    [ForeignKey("AttractionID")]
    [InverseProperty("ItemAttractions")]
    public virtual Attraction Attraction { get; set; }

    [ForeignKey("ItemID")]
    [InverseProperty("ItemAttractions")]
    public virtual Item Item { get; set; }
}