using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MPT_01_SEv1.WinApp.Modelos.Funcionario
{
    public class Model
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int empid { get; set; }

        [ForeignKey(nameof(Gerente))]
        public int? mgrid { get; set; }
        public required string empname { get; set; }
        public double salary { get; set; }
        [ForeignKey(nameof(Departamento))]
        public int? depid { get; set; }
        public string deptname { get; set; } = null!;
        public int? deptmgrid { get; set; }

        public bool gerente { get; set; }

        public DateTime dataNascimento { get; set; }
        public DateTime dataAdmissao { get; set; }

        public int VezesNoSistema { get; set; }
        public Departamento.Model? DepartamentoModel { get; set; } = null!;
        public Funcionario.Model? Gerente { get; set; } = null!;
    }
}
