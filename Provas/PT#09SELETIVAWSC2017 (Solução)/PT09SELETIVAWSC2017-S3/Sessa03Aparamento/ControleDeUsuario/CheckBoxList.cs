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
            CheckBox checkBox = new CheckBox();
            checkBox.Width -= 45;
            this.Height += 10 + checkBox.Height;
            checkBox.BackgroundImage = image;
            checkBox.BackgroundImageLayout = ImageLayout.Zoom;
            checkBox.Tag = codigo;
            checkBox.Location = new Point((this.Width / 2) - (checkBox.Width / 2), 10 + checkBox.Height * this.Controls.Count);
            checkBox.AutoCheck = false;

            this.Controls.Add(checkBox);
        }
    }
}
