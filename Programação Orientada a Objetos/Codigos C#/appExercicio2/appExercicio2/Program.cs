Int32 numero, sucessor, antecessor;

Console.WriteLine("Informe um número para saber o seu sucessor e o seu antecessor");
numero = Convert.ToInt32(Console.ReadLine());

sucessor = (numero + 1);
antecessor = (numero - 1);

Console.WriteLine($"O número {numero} possui como sucessor o número {sucessor} e antecessor o número {antecessor}");
Console.ReadLine();
