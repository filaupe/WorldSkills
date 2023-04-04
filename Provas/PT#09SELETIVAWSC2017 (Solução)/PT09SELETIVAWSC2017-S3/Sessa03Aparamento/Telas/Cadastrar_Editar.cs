using System;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

namespace Sessa03Aparamento.Telas
{
    public partial class Cadastrar_Editar : Form
    {
        public Cadastrar_Editar()
        {
            InitializeComponent();
        }

        public Color VerifyColor()
        {
            var colors = new Color[] 
            { 
                this.SituacaoAtivo.BackColor, 
                this.SituacaoManutencao.BackColor, 
                this.SituacaoInativo.BackColor
            };
            return colors.First(x => x != Color.White);
        }

        private void SituacaoAtivo_Click(object sender, EventArgs e)
        {
            this.SituacaoAtivo.BackColor = Color.Green;
            this.SituacaoManutencao.BackColor = Color.White;
            this.SituacaoInativo.BackColor = Color.White;
        }

        private void SituacaoManutencao_Click(object sender, EventArgs e)
        {
            this.SituacaoAtivo.BackColor = Color.White;
            this.SituacaoManutencao.BackColor = Color.Purple;
            this.SituacaoInativo.BackColor = Color.White;
        }

        private void SituacaoInativo_Click(object sender, EventArgs e)
        {
            this.SituacaoAtivo.BackColor = Color.White;
            this.SituacaoManutencao.BackColor = Color.White;
            this.SituacaoInativo.BackColor = Color.Red;
        }
    }
}
