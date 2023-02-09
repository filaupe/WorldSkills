using Microsoft.EntityFrameworkCore;
using Session4.Infra.Models;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Window;

namespace Session4.Forms;

public partial class AdvancedSearchDiaolog : Form
{
    private readonly Session4Context _context;

    public AdvancedSearchDiaolog(Session4Context context)
    {
        InitializeComponent();

        _context = context;
    }

    public void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        var id = (this.comboBox1.SelectedItem as Area)?.ID;

        this.comboBox4.Text = String.Empty;
        this.comboBox4.DataSource = _context.Attractions
            .Where(x => x.AreaID == id).ToList();
        this.comboBox4.DisplayMember = "Name";
        this.comboBox4.ValueMember = "ID";

        this.comboBox5.Text = String.Empty;
        this.comboBox5.DataSource = _context.Items
            .Where(x => x.AreaID == id).ToList();
        this.comboBox5.DisplayMember = "Title";
        this.comboBox5.ValueMember = "ID";
    }

    private void AdvancedSearchDiaolog_Load(object sender, EventArgs e)
    {
        this.comboBox1.DataSource = _context.Areas.ToList();
        this.comboBox1.DisplayMember = "Name";
        this.comboBox1.ValueMember = "ID";

        this.comboBox3.DataSource = _context.ItemTypes.ToList();
        this.comboBox3.DisplayMember = "Name";
        this.comboBox3.ValueMember = "ID";

        this.comboBox2.DataSource = _context.Amenities.ToList();
        this.comboBox2.DisplayMember = "Name";
        this.comboBox2.ValueMember = "ID";

        this.comboBox8.DataSource = _context.Amenities.ToList();
        this.comboBox8.DisplayMember = "Name";
        this.comboBox8.ValueMember = "ID";

        this.comboBox9.DataSource = _context.Amenities.ToList();
        this.comboBox9.DisplayMember = "Name";
        this.comboBox9.ValueMember = "ID";
    }
}
