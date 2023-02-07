using Session1.Forms.ViewModels;
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

    private void tabControl_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.dataGridView1.Rows.Clear();
        this.dataGridView2.Rows.Clear();
        
        if (this.tabPage1.CanSelect)
        {
            foreach (var item in _context.Items.ToList())
            {
                TravelerViewModel model = new(item);
                this.dataGridView1.Rows.Add(model.Title, model.Capacity, model.Area, model.Type);
            }
            this.toolStripStatusLabel.Text = $"{this.dataGridView1.RowCount} items found";
        }
        else
        {
            foreach (var item in _context.Items.ToList())
            {
                TravelerViewModel model = new(item);
                this.dataGridView2.Rows.Add(model.Title, model.Capacity, model.Area, model.Type, "Edit Details");
            }
            this.toolStripStatusLabel.Text = $"{this.dataGridView2.RowCount} items found";
        }
    }
     
    private void SeoulStayManagement_Load(object sender, EventArgs e)
    {
        foreach (var item in _context.Items.ToList())
        {
            TravelerViewModel model = new(item);
            this.dataGridView1.Rows.Add(model.Title, model.Capacity, model.Area, model.Type);
        }
        this.toolStripStatusLabel.Text = $"{this.dataGridView1.RowCount} items found";
    }

    private void textBox1_TextChanged(object sender, EventArgs e)
    {
        this.dataGridView1.Rows.Clear();
        List<TravelerViewModel> list = new();
        foreach (var item in _context.Items.ToList())
        {
            TravelerViewModel model = new(item);
            list.Add(model);
        }
        foreach (var model in list.Where(x => x.Title.Contains(this.textBox1.Text, StringComparison.OrdinalIgnoreCase) || x.Area.Contains(this.textBox1.Text, StringComparison.OrdinalIgnoreCase)))
            this.dataGridView1.Rows.Add(model.Title, model.Capacity, model.Area, model.Type);
        this.toolStripStatusLabel.Text = $"{this.dataGridView1.RowCount} items found";
    }

    private void dataGridView2_CellClick(object sender, DataGridViewCellEventArgs e)
    {
        if (e.ColumnIndex == 4)
        {
            
        }
    }
}
