double[] numeros = new double[5];
double media, soma = 0;

for (int i = 0; i < numeros.Length; i++)
{
    Console.WriteLine($"Informe o {i + 1}° número");
    numeros[i] = Convert.ToDouble(Console.ReadLine());
    soma = soma + numeros[i];
}

media = soma / (numeros.Length);

Console.WriteLine($"A média dos números informados é {media}");


