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
                this.dataGridView1.Rows.Add(model.Id, model.Title, model.Capacity, model.Area, model.Type);
            }
            this.toolStripStatusLabel.Text = $"{this.dataGridView1.RowCount} items found";
        }
        else
        {
            foreach (var item in _context.Items.ToList())
            {
                TravelerViewModel model = new(item);
                this.dataGridView2.Rows.Add(model.Id, model.Title, model.Capacity, model.Area, model.Type, "Edit Details");
            }
            this.toolStripStatusLabel.Text = $"{this.dataGridView2.RowCount} items found";
        }
    }
     
    private void SeoulStayManagement_Load(object sender, EventArgs e)
    {
        foreach (var item in _context.Items.ToList())
        {
            TravelerViewModel model = new(item);
            this.dataGridView1.Rows.Add(model.Id, model.Title, model.Capacity, model.Area, model.Type);
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
            this.dataGridView1.Rows.Add(model.Id, model.Title, model.Capacity, model.Area, model.Type);
        this.toolStripStatusLabel.Text = $"{this.dataGridView1.RowCount} items found";
    }

    private void dataGridView2_CellClick(object sender, DataGridViewCellEventArgs e)
    {
        if (e.ColumnIndex == this.dataGridView2.Columns["Column5"].Index)
        {
            long id = (long)this.dataGridView2.Rows[e.RowIndex].Cells[0].Value;

            this.OpenFormListing(false, id);
        }
    }
    private void OpenFormListing(bool type, long? id = null)
    {
        var model = _context.Items.Find(id);
        using SeoulStayAddOrEditListing form = new(type);

        foreach (var item in _context.Amenities.ToList())
            form.checkedListBox1.Items.Add(item.Name);

        form.dataGridView1.DataSource = _context.ItemAttractions.ToList();


        if (model != null)
        {
            form.textBox12.Text = model.Title;
            form.textBox6.Text = model.Capacity.ToString();
            form.textBox7.Text = model.NumberOfBeds.ToString();
            form.textBox8.Text = model.NumberOfBedrooms.ToString();
            form.textBox9.Text = model.NumberOfBathrooms.ToString();
            form.textBox2.Text = model.ApproximateAddress;
            form.textBox3.Text = model.ExactAddress;
            form.textBox4.Text = model.Description;
            form.textBox5.Text = model.HostRules;
            form.textBox10.Text = model.MinimumNights.ToString();
            form.textBox11.Text = model.MaximumNights.ToString();
        }

        if (form.ShowDialog() == DialogResult.OK)
        {
            if (type)
            {
                Item item = new()
                {
                    GUID = Guid.NewGuid(),
                    UserID = 0,
                    ItemTypeID = 1,
                    AreaID = 1,
                    Title = form.textBox12.Text,
                    Capacity = int.Parse(form.textBox6.Text),
                    NumberOfBeds = int.Parse(form.textBox7.Text),
                    NumberOfBedrooms = int.Parse(form.textBox8.Text),
                    NumberOfBathrooms = int.Parse(form.textBox9.Text),
                    ApproximateAddress = form.textBox2.Text,
                    ExactAddress = form.textBox3.Text,
                    Description = form.textBox4.Text,
                    HostRules = form.textBox5.Text,
                    MinimumNights = int.Parse(form.textBox10.Text),
                    MaximumNights = int.Parse(form.textBox11.Text),
                };
                _context.Add(item);
                _context.SaveChanges();
            }
            else
            {
                if (model != null)
                {
                    model.Title = form.textBox12.Text;
                    model.Capacity = int.Parse(form.textBox6.Text);
                    model.NumberOfBeds = int.Parse(form.textBox7.Text);
                    model.NumberOfBedrooms = int.Parse(form.textBox8.Text);
                    model.NumberOfBathrooms = int.Parse(form.textBox9.Text);
                    model.ApproximateAddress = form.textBox2.Text;
                    model.ExactAddress = form.textBox3.Text;
                    model.Description = form.textBox4.Text;
                    model.HostRules = form.textBox5.Text;
                    model.MinimumNights = int.Parse(form.textBox10.Text);
                    model.MaximumNights = int.Parse(form.textBox11.Text);

                    _context.SaveChanges();
                }          
            }
        }
    }

    private void button1_Click(object sender, EventArgs e)
    {
        this.OpenFormListing(true);
    }
}
