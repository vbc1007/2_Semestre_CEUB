double numero1, numero2;
string resultado;

Console.WriteLine("Insira um número");
numero1 = Convert.ToDouble(Console.ReadLine());

Console.WriteLine("Insira novamente outro número");
numero2 = Convert.ToDouble(Console.ReadLine());

resultado = (numero1 > numero2) ? $"O número {numero1} é o maior" : (numero1 < numero2) ? $"O número {numero2} é o maior" : "Os números são iguais";

Console.WriteLine(resultado);
