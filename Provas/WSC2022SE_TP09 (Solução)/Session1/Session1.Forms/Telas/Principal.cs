using Session1.Infra.Models;

namespace Session1.Forms.Telas;

public partial class Principal : Form
{
    public Principal()
    {
        InitializeComponent();
    }

    private void Principal_Load(object sender, EventArgs e)
    {
        Session1Context context = new();
        this.dataGridView.DataSource = context.ItemAmenities.ToList();
    }
}
