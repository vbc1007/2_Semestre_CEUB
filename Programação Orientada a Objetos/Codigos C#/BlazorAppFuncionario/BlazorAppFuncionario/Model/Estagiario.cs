namespace BlazorAppFuncionario.Model
{
    public class Estagiario:Funcionario
    {
        public override double RetornarSalario(int horas)
        {
            salario = horas + 50;
            return salario;
        }
    }
}
