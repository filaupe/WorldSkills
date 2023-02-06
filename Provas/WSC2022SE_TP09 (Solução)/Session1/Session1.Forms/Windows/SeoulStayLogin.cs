using Microsoft.EntityFrameworkCore;
using Session1.Infra.Models;

namespace Session1.Forms.Windows;

public partial class SeoulStayLogin : Form
{
    private readonly Session1Context _context;

    public SeoulStayLogin(Session1Context context)
    {
        InitializeComponent();

        _context = context;

        this.Visible = false;
    }

    private async void login(string employeeTxt, string userTxt, string passwordTxt)
    {
        if (!String.IsNullOrWhiteSpace(employeeTxt))
        {
            User? employee = await _context.Users.FirstOrDefaultAsync(x => x.Username == employeeTxt && x.Password == passwordTxt);
            User? user = await _context.Users.FirstOrDefaultAsync(x => x.Username == userTxt);
            if (employee != null)
            {
                if (user != null)
                {
                    this.RememberMe();

                    var openManagement = new Thread(() => Application.Run(new SeoulStayManagement()));
                    openManagement.SetApartmentState(ApartmentState.STA);
                    openManagement.Start();

                    this.Close();
                }
                else MessageBox.Show("User not found.");
            }
            else MessageBox.Show("Employee not found.");
        }
        else
        {
            User? user = await _context.Users.FirstOrDefaultAsync(x => x.Username == userTxt && x.Password == passwordTxt);
            if (user != null)
            {
                this.RememberMe();

                var openManagement = new Thread(() => Application.Run(new SeoulStayManagement()));
                openManagement.SetApartmentState(ApartmentState.STA);
                openManagement.Start();

                this.Close();
            }
            else MessageBox.Show("User not found.");
        }
    }

    private void RememberMe()
    {
        if (!String.IsNullOrWhiteSpace(this.textBoxEmployee.Text))
        {
            if (this.checkBoxKeepSigned.Checked)
            {
                Properties.RememberMe.Default.Employee = this.textBoxEmployee.Text;
                Properties.RememberMe.Default.User = this.textBoxUser.Text;
                Properties.RememberMe.Default.Password = this.textBoxPassword.Text;
                Properties.RememberMe.Default.Save();
            }
            else
            {
                Properties.RememberMe.Default.Employee = "";
                Properties.RememberMe.Default.User = "";
                Properties.RememberMe.Default.Password = "";
                Properties.RememberMe.Default.Save();
            }
        }
        else
        {
            if (this.checkBoxKeepSigned.Checked)
            {
                Properties.RememberMe.Default.User = this.textBoxUser.Text;
                Properties.RememberMe.Default.Password = this.textBoxPassword.Text;
                Properties.RememberMe.Default.Save();
            }
            else
            {
                Properties.RememberMe.Default.User = "";
                Properties.RememberMe.Default.Password = "";
                Properties.RememberMe.Default.Save();
            }
        }
    }

    private void buttonExit_Click(object? seder, EventArgs e) => Application.Exit();
    private void buttonLogin_Click(object? seder, EventArgs e)
    {
        string employeeTxt = this.textBoxEmployee.Text;
        string userTxt = this.textBoxUser.Text;
        string passwordTxt = this.textBoxPassword.Text;

        this.login(employeeTxt, userTxt, passwordTxt);
    }
    private void checkBoxShowPassword_CheckedChanged(object? seder, EventArgs e)
        => this.textBoxPassword.UseSystemPasswordChar = !this.checkBoxShowPassword.Checked;

    private void linkLabelCreateAccount_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
    {

    }

    private async void SeoulStayLogin_Load(object sender, EventArgs e)
    {
        if (!String.IsNullOrWhiteSpace(Properties.RememberMe.Default.Password))
        {
            if (!String.IsNullOrWhiteSpace(Properties.RememberMe.Default.Employee))
            {
                User? employee = await _context.Users.FirstOrDefaultAsync(x => x.Username == Properties.RememberMe.Default.Employee && x.Password == Properties.RememberMe.Default.Password);
                User? user = await _context.Users.FirstOrDefaultAsync(x => x.Username == Properties.RememberMe.Default.User);
                var openManagement = new Thread(() => Application.Run(new SeoulStayManagement()));
                openManagement.SetApartmentState(ApartmentState.STA);
                openManagement.Start();

                this.Close();
            }
            else
            {
                User? employee = await _context.Users.FirstOrDefaultAsync(x => x.Username == Properties.RememberMe.Default.User && x.Password == Properties.RememberMe.Default.Password);
                var openManagement = new Thread(() => Application.Run(new SeoulStayManagement()));
                openManagement.SetApartmentState(ApartmentState.STA);
                openManagement.Start();

                this.Close();
            }  
        }
        else
        {
            this.Visible = true;
        }
    }
}
