using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MPT_01_SEv1.Forms.Models;

public class Department
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int depid { get; set; }
    public required string deptname { get; set; }
    public required int deptmgrid { get; set; }
}
