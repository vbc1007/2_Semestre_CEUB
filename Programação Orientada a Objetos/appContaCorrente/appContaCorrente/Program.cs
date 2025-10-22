using appContaCorrente.Model;

ContaCorrente contaCorrente = new ContaCorrente();

Console.WriteLine("Informe o numero da conta corrente");
contaCorrente.numeroConta = Convert.ToInt32(Console.ReadLine());

Console.WriteLine("Informe o nome do banco");
contaCorrente.nomeBanco = Console.ReadLine();

Console.WriteLine("Informe o nome da agencia");
contaCorrente.nomeAgencia = Console.ReadLine();

Console.WriteLine("Informe o nome do cliente do banco");
contaCorrente.nomeCliente = Console.ReadLine();

Console.WriteLine(contaCorrente.imprimirContaCorrente());