namespace BlazorAppFuncionario.Model
{
    public class Diretor:Funcionario
    {
        public override double RetornarSalario(int horas)
        {
            salario = horas * 200;
            return salario;
        }
    }
}
