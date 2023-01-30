using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MPT_01_SEv1.Forms.Models.Employees;

public class Employee
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public double empid { get; set; }
    public double? mgrid { get; set; }
    public required string empname { get; set; }
    public required decimal salary { get; set; }
    public required double depid { get; set; }
    public string deptname { get; set; } = null!;
    public double? deptmgrid { get; set; }
    public DateTime bornDate { get; set; }
    public DateTime admissionDate { get; set; }
    public int loginCount { get; set; }
}
