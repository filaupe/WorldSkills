namespace Session1.Forms.Windows;

public partial class SeoulStayAddOrEditListing : Form
{
    private readonly bool _type;
    public SeoulStayAddOrEditListing(bool type)
    {
        InitializeComponent();

        _type = type;

        this.SetTypeConfig();
    }

    private void SetTypeConfig()
    {
        if (_type)
        {
            this.Text = "Seoul Stay - Add Listing";
            this.button1.Text = "finish";
        }
        else
        {
            this.Text = "Seoul Stay - Edit Listing";
            this.button1.Text = "close";
            this.button2.Visible = false;
        }
    }

    private void button2_Click(object sender, EventArgs e)
    {
        if (this.tabControl1.SelectedIndex == this.tabControl1.TabCount - 1)
            this.button2.Enabled = false;
        else
            this.tabControl1.SelectTab(this.tabControl1.SelectedIndex+1);
    }
}
