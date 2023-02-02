using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MPT_01_SEv1.Forms.Telas.Dialogos
{
    public partial class DialogEmployee : Form
    {
        public DialogEmployee()
        {
            InitializeComponent();
        }

        private void textBoxName_Enter(object sender, EventArgs e)
        {
            this.textBoxName.ForeColor = Color.LightCoral;
        }

        private void textBoxSalary_Enter(object sender, EventArgs e)
        {
            this.textBoxSalary.ForeColor = Color.LightCoral;
        }

        private void textBoxSalary_Leave(object sender, EventArgs e)
        {
            this.textBoxSalary.BackColor = Color.White;
        }

        private void textBoxName_Leave(object sender, EventArgs e)
        {
            this.textBoxName.BackColor = Color.White;
        }
    }
}
