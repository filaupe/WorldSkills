using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MPT_01_SEv1.Forms.Models.Departments;

public class Department
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int depid { get; set; }
    public required string deptname { get; set; }
    public int deptmgrid { get; set; }
}
