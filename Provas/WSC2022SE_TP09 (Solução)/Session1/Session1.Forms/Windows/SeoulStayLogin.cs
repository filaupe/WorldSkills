using Microsoft.EntityFrameworkCore;
using Session1.Infra.Models;
using System.Windows.Forms;

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
    private async void linkLabelCreateAccount_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
    {
        using SeoulStayCreateAccount form = new();
        if (form.ShowDialog() == DialogResult.OK)
        {
            try
            {
                if (String.IsNullOrWhiteSpace(form.textBoxUsername.Text))
                    throw new Exception("the field username needs to be filled");
                if (String.IsNullOrWhiteSpace(form.textBoxFullName.Text))
                    throw new Exception("the field full name needs to be filled");
                if (String.IsNullOrWhiteSpace(form.textBoxPassword.Text))
                    throw new Exception("the field password needs to be filled");
                if (String.IsNullOrWhiteSpace(form.textBoxRetypePassword.Text))
                    throw new Exception("the field needs retype password to be filled");
                if (!form.radioButtonMale.Checked && !form.radioButtonFemale.Checked)
                    throw new Exception("Check your gender");
                if (String.IsNullOrWhiteSpace(form.comboBoxNumberOfFamily.Text))
                    throw new Exception("Add you family members count");
                if (form.count < 1)
                    throw new Exception("You need to read the terms to accept them");
                if (!form.checkBox1.Checked)
                    throw new Exception("You need to accept the terms to create an account ");
                if (form.textBoxPassword.Text.Length < 5)
                    throw new Exception("Password field don't have five or more chracters");
                if (form.textBoxPassword.Text != form.textBoxRetypePassword.Text)
                    throw new Exception("The field password and retype password not match");

                User user = new()
                {
                    GUID = Guid.NewGuid(),
                    Username = form.textBoxUsername.Text,
                    Password = form.textBoxPassword.Text,
                    FullName = form.textBoxFullName.Text,
                    Gender = !form.radioButtonMale.Checked,
                    BirthDate = form.dateTimePickerBirthday.Value,
                    FamilyCount = int.Parse(form.comboBoxNumberOfFamily.Text),
                };

                if (await _context.Users.AnyAsync(x => x.Username == user.Username))
                    throw new Exception("User already exists");

                await _context.AddAsync(user);
                await _context.SaveChangesAsync();

                this.login(String.Empty, user.Username, user.Password);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                this.linkLabelCreateAccount_LinkClicked(sender, e);
            }
        }
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