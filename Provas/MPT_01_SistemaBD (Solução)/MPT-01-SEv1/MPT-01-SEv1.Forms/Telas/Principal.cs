using MPT_01_SEv1.Forms.Models;
using MPT_01_SEv1.Forms.Telas.SubTelas;

namespace MPT_01_SEv1.Forms.Telas;

public partial class Principal : Form
{
    private readonly AppDbContext _context;
    private readonly Employee _user;

    public Principal(Employee user)
    {
        InitializeComponent();

        _context = new();
        _user = _context.Employees.Find(user.empid)!;
    }
    private void Principal_Load(object sender, EventArgs e)
    {
        _user.loginCount++;
        _context.SaveChanges();
        
        this.toolStripStatusLabelTime.Text = DateTime.Now.ToString("dd/MM/yyyy - HH:mm:ss");
        this.toolStripStatusLabelLoginCount.Text = $"Vezes Logado: {_user.loginCount}";
        this.timer.Start();
    }
    private void timer_Tick(object sender, EventArgs e)
    {
        var dateTime = DateTime.Now;
        this.toolStripStatusLabelTime.Text = dateTime.ToString("dd/MM/yyyy - HH:mm:ss");
        if (_user.bornDate.Month == dateTime.Month) 
            this.statusStrip.BackColor = Color.Green;
        else this.statusStrip.BackColor = Color.Yellow;
    }
    private void departmentToolStripMenuItem_Click(object sender, EventArgs e)
    {
        DisplayDepartment form = new(_user);
        form.MdiParent = this;
        form.Show();
    }
    private void employeeToolStripMenuItem_Click(object sender, EventArgs e)
    {
        DisplayEmployee form = new(_user);
        form.MdiParent = this;
        form.Show();
    }

    private void horizontalmenteToolStripMenuItem_Click(object sender, EventArgs e)
    {
        this.LayoutMdi(MdiLayout.TileHorizontal);
    }

    private void verticalmenteToolStripMenuItem_Click(object sender, EventArgs e)
    {
        this.LayoutMdi(MdiLayout.TileVertical);
    }

    private void cascataToolStripMenuItem_Click(object sender, EventArgs e)
    {
        this.LayoutMdi(MdiLayout.Cascade);
    }
}
