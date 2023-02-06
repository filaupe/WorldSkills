using Session1.Infra.Models;

namespace Session1.Forms.Windows;

public partial class SeoulStayManagement : Form
{
    private readonly Session1Context _context; 

    public SeoulStayManagement()
    {
        InitializeComponent();

        _context = new();
    }

    private void buttonExit_Click(object sender, EventArgs e) => Application.Exit();

    private void buttonLogOut_Click(object sender, EventArgs e)
    {
        Properties.RememberMe.Default.Employee = "";
        Properties.RememberMe.Default.User = "";
        Properties.RememberMe.Default.Password = "";
        Properties.RememberMe.Default.Save();

        var openManagement = new Thread(() => Application.Run(new SeoulStayLogin(_context)));
        openManagement.SetApartmentState(ApartmentState.STA);
        openManagement.Start();

        this.Close();
    }
}
