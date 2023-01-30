using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MPT_01_SEv1.Forms.Models.Employees;

public class Employee
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int empid { get; set; }
    public int? mgrid { get; set; }
    public required string empname { get; set; }
    public decimal salary { get; set; }
    public int depid { get; set; }
    public string deptname { get; set; } = null!;
    public int? deptmgrid { get; set; }
    public DateTime bornDate { get; set; }
    public DateTime admissionDate { get; set; }
    public int loginCount { get; set; }
}
