using System.Linq;

namespace MPT_01_SEv3.Forms.Models.ViewModels
{
    public class DepartamentoViewModel
    {
        private readonly bdBrasilResortEntities _context;

        private readonly funcionarios_ _funcionario;
        private readonly departamentos_ _departamento;

        public DepartamentoViewModel(int departamentoId)
        {
            _context = new bdBrasilResortEntities();

            _departamento = _context.departamentos_.First(x => x.Id == departamentoId);
            _funcionario = _context.funcionarios_.First(x => x.Id == _departamento.deptmgrid);
        }

        public funcionarios_ Funcionario { get => _funcionario; }
        public departamentos_ Departamento { get => _departamento; }
    }
}
