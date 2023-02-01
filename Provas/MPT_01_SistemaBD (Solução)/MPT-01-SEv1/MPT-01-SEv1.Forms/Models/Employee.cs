using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MPT_01_SEv1.Forms.Models;
public class Employee
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int empid { get; set; }
    public int? mgrid { get; set; } = null;
    public required string empname { get; set; }
    public decimal salary { get; set; }
    public int depid { get; set; }
    public required string deptname { get; set; }
    public int? deptmgrid { get; set; } = null;
    public int loginCount { get; set; } = 0;
    public required DateTime bornDate { get; set; }
    public DateTime enterDate { get; set; } = DateTime.Now;
}
