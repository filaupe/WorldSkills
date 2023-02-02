namespace MPT_01_SEv1.Forms.Telas.Dialogos;

public partial class DialogDepartment : Form
{
    public DialogDepartment()
    {
        InitializeComponent();
    }

    private void textBoxName_Leave(object sender, EventArgs e)
    {
        this.textBoxName.BackColor = Color.White;
    }

    private void textBoxName_Enter(object sender, EventArgs e)
    {
        this.textBoxName.ForeColor = Color.LightCoral;
    }
}
