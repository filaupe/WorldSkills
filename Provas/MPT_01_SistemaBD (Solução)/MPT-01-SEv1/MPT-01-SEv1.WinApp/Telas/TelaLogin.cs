using Microsoft.EntityFrameworkCore;

namespace MPT_01_SEv1.WinApp.Telas;

public partial class TelaLogin : Form
{
    private AppDbContext _context = new();
    private Modelos.Funcionario.Model _user = null!;
    private Thread _t1 = null!;
    private int _tentativas = 0;
    public TelaLogin()
    {
        InitializeComponent();
    }

    private async void buttonLogin_Click(object sender, EventArgs e)
    {
        string name = this.textBoxName.Text.Trim();
        if (await _context.Funcionarios.AnyAsync(x => x.empname.Equals(name)))
        {
            _user = await _context.Funcionarios.FirstAsync(x => x.empname.Equals(name));
            _user.VezesNoSistema++;
            _context.SaveChanges();
            this.Close();
            
            _t1 = new(() => Application.Run(new TelaPrincipal(_user)));
            _t1.SetApartmentState(ApartmentState.STA);
            _t1.Start();
        }
        _tentativas++;
        MessageBox.Show("Login Incorreto");
        if (_tentativas >= 3) this.Close();
    }
}
