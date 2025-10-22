namespace BlazorAppExemploHerançaBCC.Model
{
    public class PessoaFisica:Pessoa
    {
        private string rg;
        private string cpf;
        private DateTime dataNascimento;

        public string Rg { get => rg; set => rg = value; }
        public string Cpf { get => cpf; set => cpf = value; }
        public DateTime DataNascimento { get => dataNascimento; set => dataNascimento = value; }
    }
}
