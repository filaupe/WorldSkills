using PT09SELETIVAWSC2017_S4.Database;
using PT09SELETIVAWSC2017_S4.Telas.Dialogs;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017_S4.Telas
{
    public partial class Agenda : Form
    {
        private readonly bdAbuDhabiTurS04Entities _context;

        public Agenda()
        {
            InitializeComponent();

            _context = new bdAbuDhabiTurS04Entities();
        }

        private async void button2_Click(object sender, EventArgs e)
        {
            async Task add(Agendum model)
            {
                _context.Agenda1.Add(model);
                await _context.SaveChangesAsync();
            }

            using (var form = new FormularioGeradorDeCampos())
            {
                if (form.ShowDialog() == DialogResult.OK)
                {
                    var model = new Agendum()
                    {
                        nome = form.textBoxNome.Text,
                        tipo = form.comboBox.Text,
                        nulo = form.checkBox.Checked,
                    };
                    try
                    {
                        var connection = new SqlConnection("data source=.\\WORLDSKILLSP1;initial catalog=bdAbuDhabiTurS04;integrated security=True;");
                        await connection.OpenAsync();
                        var command = new SqlCommand("create table Agenda(id int primary key identity(1,1),nome varchar(40) not null,tipo varchar(50) not null,nulo bit default 0)", connection);
                        await command.ExecuteNonQueryAsync();
                        await add(model);
                    }
                    catch
                    {
                        await add(model);
                    }
                }
            }
        }

        private async void Agenda_Load(object sender, EventArgs e)
        {
            int i = 1;
            foreach (var item in await _context.Agenda1.ToListAsync())
            {
                Label label = new Label();
                TextBox textBox = new TextBox();
                label.AutoSize = true;
                label.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
                label.Location = new System.Drawing.Point(141, (int)((20*1.4)*i));
                label.Size = new System.Drawing.Size(91, 16);
                label.TabIndex = 9;
                label.Text = item.nome;
                label.Visible = true;


                textBox.Location = new System.Drawing.Point(238, 160);
                textBox.Size = new System.Drawing.Size(121, (int)((20*1.4)*i));
                textBox.TabIndex = 10;
                textBox.Visible = true;
                textBox.Text = item.tipo;

                this.Controls.Add(label);
                this.Controls.Add(textBox);

                i++;
            }
        }
    }
}
