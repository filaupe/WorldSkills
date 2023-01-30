namespace MPT_01_SEv1.Forms.Telas.SubTelas;

public partial class Departamento : Form
{
    public Departamento()
    {
        InitializeComponent();
    }

    private void Departamento_KeyUp(object sender, KeyEventArgs e)
    {
        if (e.KeyCode == Keys.F4) this.Close();
    }
}
