namespace BlazorAppFuncionario.Model
{
    public class Gerente:Funcionario
    {
        public override double RetornarBonificacao()
        {
            return salario * 0.15;
        }
    }
}
