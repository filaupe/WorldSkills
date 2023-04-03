using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Sessa03Aparamento.ControleDeUsuario
{
    public partial class ListRadioButtons : UserControl
    {
        public ListRadioButtons()
        {
            InitializeComponent();
        }

        private void RadioButton_Click(object sender, EventArgs e)
        {
            foreach (RadioButton radioButton in this.Controls)
                if (radioButton != sender)
                    radioButton.Checked = false;

            RadioButton clickedRadioButton = (RadioButton)sender;
            clickedRadioButton.Checked = true;
        }

        public void Add(Image image, int codigo)
        {
            RadioButton radioButton = new RadioButton();
            radioButton.Width -= 45;
            this.Width += 10 + radioButton.Width;
            radioButton.BackgroundImage = image;
            radioButton.BackgroundImageLayout = ImageLayout.Zoom;
            radioButton.Tag = codigo;
            radioButton.Location = new Point(10 + radioButton.Width * this.Controls.Count, (this.Height/2)-(radioButton.Height/2));
            radioButton.AutoCheck = false;
            radioButton.Click += new EventHandler(RadioButton_Click);
           
            this.Controls.Add(radioButton);
        }
    }
}
