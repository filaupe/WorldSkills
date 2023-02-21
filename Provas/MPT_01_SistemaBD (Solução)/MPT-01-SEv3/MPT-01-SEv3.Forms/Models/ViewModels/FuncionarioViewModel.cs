using System.Linq;

namespace MPT_01_SEv3.Forms.Models.ViewModels
{
    public class FuncionarioViewModel
    {
        private readonly bdBrasilResortEntities _context;

        private readonly funcionarios_ _funcionario;
        private readonly nascimento_ _nascimento;
        private readonly logins_ _login;
        private readonly departamentos_ _departamento;

        public FuncionarioViewModel(int funcionarioId)
        {
            _context = new bdBrasilResortEntities();

            _funcionario = _context.funcionarios_.First(x => x.Id == funcionarioId);
            _nascimento = _context.nascimento_.First(x => x.empid == funcionarioId);
            _login = _context.logins_.First(x => x.empid == funcionarioId);
            _departamento = _context.departamentos_.FirstOrDefault(x => x.deptmgrid == funcionarioId);
        }

        public funcionarios_ Funcionario { get => _funcionario; }
        public nascimento_ Nascimento { get => _nascimento; }
        public logins_ Login { get => _login; }
        public departamentos_ Departamento { get => _departamento; }
    }
}
