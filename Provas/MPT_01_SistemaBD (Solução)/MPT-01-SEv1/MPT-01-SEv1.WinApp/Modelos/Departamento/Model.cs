using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MPT_01_SEv1.WinApp.Modelos.Departamento;

public class Model
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int depid { get; set; }
    [ForeignKey(nameof(Gerente))]
    public int? deptmgrid { get; set; }
    public required string name { get; set; }

    public Funcionario.Model? Gerente { get; set; }
    [NotMapped] public List<Funcionario.Model> Funcionarios { get; set; } = null!;
}
