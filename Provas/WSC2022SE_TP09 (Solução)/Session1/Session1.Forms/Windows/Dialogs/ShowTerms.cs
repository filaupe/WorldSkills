namespace Session1.Forms.Windows.Dialogs;

public partial class ShowTerms : Form
{
    public ShowTerms()
    {
        InitializeComponent();
    }

    private void Terms_Load(object sender, EventArgs e)
    {
        this.label1.Text = Properties.Terms.Term;
    }
}
