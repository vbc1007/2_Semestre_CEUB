Int32[] pares = new Int32[10];
Int32[] impares = new Int32[10];
Int32 numeros;

for (int i = 0; i < 10; i++)
{
    Console.WriteLine($"Insira o {i + 1}° número");
    numeros = Convert.ToInt32(Console.ReadLine());

    if (numeros % 2 == 0)
    {
        pares[i] = numeros;
    }

    else
    {
        impares[i] = numeros;
    }
}

Console.WriteLine("Números pares:");
for (int i = 0; i < 10; i++)
{
    if (impares[i] != 0)
    {
        Console.WriteLine(pares[i]);
    }
}

Console.WriteLine("Números ímpares:");

for (int i = 0; i < 10; i++)
{
    if (impares[i] != 0)
    {
        Console.WriteLine(impares[i]);
    }
}
