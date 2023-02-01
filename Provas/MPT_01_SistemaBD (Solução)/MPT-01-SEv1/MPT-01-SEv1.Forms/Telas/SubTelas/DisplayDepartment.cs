using MPT_01_SEv1.Forms.Models;

namespace MPT_01_SEv1.Forms.Telas.SubTelas;

public partial class DisplayDepartment : Form
{
    private readonly AppDbContext _context;
    private readonly Employee _user;
    private int _skip = 0;
    private int _take = 2;

    public DisplayDepartment(Employee user)
    {
        InitializeComponent();

        _context = new();
        _user = _context.Employees.Find(user.empid)!;
    }

    public void DisplayDepartment_KeyDown(object sender, KeyEventArgs e)
    {
        if (e.KeyCode == Keys.F4)
            this.Close();
    }
}
