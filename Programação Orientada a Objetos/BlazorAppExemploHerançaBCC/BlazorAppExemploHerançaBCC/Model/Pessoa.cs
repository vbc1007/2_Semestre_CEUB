namespace BlazorAppExemploHerançaBCC.Model
{
    public class Pessoa
    {
        private string nome;
        private string endereco;
        private string telefone;

        public string Nome { get => nome; set => nome = value; }
        public string Endereco { get => endereco; set => endereco = value; }
        public string Telefone { get => telefone; set => telefone = value; }
    }
}
