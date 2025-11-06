using Exemplo2Polimorfismo.Model;
using System.Diagnostics;

string tipoAnimal = "";
string somAnimal;

Console.WriteLine("$Selecione um número correspondente a um animal: ");
Console.WriteLine("1 - Carneiro \r\n2 - Gato\r\n3- Vaca");
tipoAnimal = Console.ReadLine();

switch (tipoAnimal)
{
    case "1":
        Carneiro carneiro = new Carneiro();
        Console.WriteLine("Informe o nome do animal");
        carneiro.Nome = Console.ReadLine();
        somAnimal = $"O carneiro {carneiro.Nome} tem 4 patas e faz {carneiro.EmitirSom()}";
        Console.WriteLine(somAnimal);
        break;

    case "2":
        Gato gato = new Gato();
        Console.WriteLine("Informe o nome do animal");
        gato.Nome = Console.ReadLine();
        somAnimal = $"O gato {gato.Nome} tem 4 patas e faz {gato.EmitirSom()}";
        Console.WriteLine(somAnimal);
        break;

    case "3":
        Vaca vaca = new Vaca();
        Console.WriteLine("Informe o nome do animal");
        vaca.Nome = Console.ReadLine();
        somAnimal = $"A vaca {vaca.Nome} tem 4 patas e faz {vaca.EmitirSom()}";
        Console.WriteLine(somAnimal);
        break;
}