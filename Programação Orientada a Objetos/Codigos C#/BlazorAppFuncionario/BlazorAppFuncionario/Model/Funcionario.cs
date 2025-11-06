namespace BlazorAppFuncionario.Model
{
    public class Funcionario
    {
        private string nome;
        protected double salario;

        public string Nome { get => nome; set => nome = value; }

        public virtual double RetornarSalario(int horas)
        {
            salario = horas * 100;
            return salario;
        }

        public virtual double RetornarBonificacao()
        {
            double bonificacao;
            bonificacao = salario * 0.10;
            return bonificacao;
        }
    }
}
