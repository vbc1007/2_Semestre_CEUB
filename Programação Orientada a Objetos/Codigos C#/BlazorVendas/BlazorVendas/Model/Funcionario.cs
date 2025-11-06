namespace BlazorVendas.Model
{
    public class Funcionario
    {
        public Int32 Id { get; set; }
        public string Nome { get; set; }
        public string Cpf { get; set; }
        public string Email { get; set; }
        public string Cargo { get; set; }
        public double Salario { get; set; }
        public DateTime DataAdimissao { get; set; }
        //private Int32 id;
        //private string nome;
        //private string cpf;
        //private string cargo;
        //private double salario;
        //private DateTime dataAdimissao;

        //public int Id { get => id; set => id = value; }
        //public string Nome { get => nome; set => nome = value; }
        //public string Cpf { get => cpf; set => cpf = value; }
        //public string Cargo { get => cargo; set => cargo = value; }
        //public double Salario { get => salario; set => salario = value; }
        //public DateTime DataAdimissao { get => dataAdimissao; set => dataAdimissao = value; }

        public void Adicionar()
        {
            //Adicionar do banco de dados
        }

        public void Excluir(Int32 id)
        {
            //Excluir do banco de dados
        }
        public void Alterar(Int32 id)
        {
            //Alterar algo banco de dados
        }

        public string PesquisarPorId(Int32 id)
        {
            string resultado = "";
            return resultado;
        }

        public string ListarTodos()
        {
            string resultado = "";
            return resultado;
        }

        public string PesquisarPorNome(Int32 id)
        {
            string resultado = "";
            return resultado;
        }
    }
}
