namespace BlazorVendas.Model
{
    public class Cliente
    {
        private Int32 id;
        private string nome;
        private string cpfCnpj;
        private string email;
        private string telefone;
        private string endereco;

        public int Id { get => id; set => id = value; }
        public string Nome { get => nome; set => nome = value; }
        public string CpfCnpj { get => cpfCnpj; set => cpfCnpj = value; }
        public string Email { get => email; set => email = value; }
        public string Telefone { get => telefone; set => telefone = value; }
        public string Endereco { get => endereco; set => endereco = value; }

        public void Adicionar()
        {
            //Adicionar do banco de dados
        }

        public void Excluir(Int32)
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
  