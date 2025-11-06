double raio, areaCircunferencia;

Console.WriteLine("Informe o raio da circunferência: ");
    raio = Convert.ToDouble(Console.ReadLine());

areaCircunferencia = Math.Round(Math.PI * Math.Pow(raio, 2), 2);

Console.WriteLine($"A área da circunferência é: {areaCircunferencia}");