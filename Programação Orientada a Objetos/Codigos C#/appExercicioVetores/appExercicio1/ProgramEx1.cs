double[] salarios = new double[10];
double maiorSalario;

for (int i = 0; i < salarios.Length; i++)
{
    Console.WriteLine($"Informe o {i + 1}° salário");
    salarios[i] = Convert.ToDouble(Console.ReadLine());
}

Console.WriteLine("O maior salário digitados é: ");

maiorSalario = salarios[0];

for (int i = 0; i < salarios.Length; i++)
{
    if (maiorSalario < salarios[i])
    {
        maiorSalario = salarios[i];
    }
}

Console.WriteLine(maiorSalario);