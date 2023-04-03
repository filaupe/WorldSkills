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
    public partial class Hotel : UserControl
    {
        private readonly Color _background;
        private readonly string _codigo;
        private readonly DateTime? _dataManutencao;

        public Hotel(Color background, string codigo, DateTime? dataManutencao)
        {
            InitializeComponent();

            _background = background;
            _codigo = codigo;
            _dataManutencao = dataManutencao;
        }

        private void Hotel_Load(object sender, EventArgs e)
        {
            this.BackColor = _background;
        }
    }
}
