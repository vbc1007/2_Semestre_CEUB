Int32 numeroestacao;

Console.WriteLine("Informe um numero entre 1 a 4 para saber a estação correspondente");
numeroestacao = Convert.ToInt32(Console.ReadLine());

switch (numeroestacao)
{
    case 1:
        Console.WriteLine("A estação escolhida foi a Primavera");
        break;

    case 2:
        Console.WriteLine("A estação escolhida foi o Verão");
        break;

    case 3:
        Console.WriteLine("A estação escolhida foi o Outono");
        break;

    case 4:
        Console.WriteLine("A estação escolhida foi o Inverno");
        break;

    default:
        Console.WriteLine("Informe somente números entre 1 a 4 para saber a estação do ano");
        break;
}
