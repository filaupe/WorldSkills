namespace ImportacaoExportacao.Models
{
    public class Cliente
    {
        public int CODIGO { get; set; }
        public string NOME { get; set; }
        public string SOBRENOME { get; set; }
        public long CPF { get; set; }
        public long CELULAR { get; set; }
        public bool ACEITASMS { get; set; }
        public string EMAIL { get; set; }
        public string SEXO { get; set; }
    }
}
