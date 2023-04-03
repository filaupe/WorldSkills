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
    public partial class CheckBoxList : UserControl
    {
        public CheckBoxList()
        {
            InitializeComponent();
        }

        public void Add(Image image, int codigo)
        {
            CheckBox radioButton = new CheckBox();
            radioButton.Width -= 45;
            this.Height += 10 + radioButton.Height;
            radioButton.BackgroundImage = image;
            radioButton.BackgroundImageLayout = ImageLayout.Zoom;
            radioButton.Tag = codigo;
            radioButton.Location = new Point((this.Width / 2) - (radioButton.Width / 2), 10 + radioButton.Height * this.Controls.Count);
            radioButton.AutoCheck = false;

            this.Controls.Add(radioButton);
        }
    }
}
