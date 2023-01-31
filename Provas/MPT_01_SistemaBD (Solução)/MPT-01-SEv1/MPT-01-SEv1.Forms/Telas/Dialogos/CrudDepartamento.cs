namespace MPT_01_SEv1.Forms.Telas.Dialogos;

public partial class CrudDepartamento : Form
{
    public CrudDepartamento()
    {
        InitializeComponent();
    }

    public void loadCombo()
    {
        using ApplicationDbContext context = new();
        var employees = context.Employees;
        this.comboBoxGerents.DataSource = context.Employees.Where(c => employees.Any(o => c.empid == o.mgrid)).ToList();
        this.comboBoxGerents.DisplayMember = "empname";
        this.comboBoxGerents.ValueMember = "empid";
    }

    private void CrudDepartamento_Load(object sender, EventArgs e)
    {
        loadCombo();
    }
}
