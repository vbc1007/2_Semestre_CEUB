namespace BlazorAppExemploHerançaBCC.Model
{
    public class PessoaJuridica:Pessoa
    {
        private string cnpj;
        private string inscrEstadual;
        private string inscrMunicipal;

        public string Cnpj { get => cnpj; set => cnpj = value; }
        public string InscrEstadual { get => inscrEstadual; set => inscrEstadual = value; }
        public string InscrMunicipal { get => inscrMunicipal; set => inscrMunicipal = value; }
    }
}
