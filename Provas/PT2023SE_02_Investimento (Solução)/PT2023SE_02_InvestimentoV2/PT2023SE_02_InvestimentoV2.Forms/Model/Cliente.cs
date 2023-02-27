using System.Collections.Generic;

namespace PT2023SE_02_InvestimentoV2.Forms.Model
{
    public class Cliente
    {
        public Cliente(string nome, int idade)
        {
            _nome = nome;
            _idade = idade;
        }

        private readonly string _nome;
        private readonly int _idade;

        public string Nome { get => _nome; }
        public int Idade { get => _idade; }

        public List<Investimento> Ivestimentos { get; set; }
    }
}
