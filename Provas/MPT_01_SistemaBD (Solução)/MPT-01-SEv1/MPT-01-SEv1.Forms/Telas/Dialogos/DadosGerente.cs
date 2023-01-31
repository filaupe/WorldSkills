using MPT_01_SEv1.Forms.Models.Employees;

namespace MPT_01_SEv1.Forms.Telas.Dialogos;

public partial class DadosGerente : Form
{
    private readonly Employee _user;

    public DadosGerente(Employee user)
    {
        InitializeComponent();

        _user = user;
    }
}
