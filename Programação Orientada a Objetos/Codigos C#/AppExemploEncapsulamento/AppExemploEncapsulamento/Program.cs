using AppExemploEncapsulamento.Model;

ContaCorrente contaCorrente = new ContaCorrente(3000);

Console.WriteLine("Informe o número da Conta Corrente");
contaCorrente.numeroConta = Console.ReadLine();

Console.WriteLine("Informe o titular da Conta Corrente");
contaCorrente.titular = Console.ReadLine();

Console.WriteLine("Infomre o valor do Saque da Conta Corrente");
double valor = Convert.ToDouble(Console.ReadLine());

contaCorrente.Sacar(valor);
string resultado = contaCorrente.Extrato();
Console.WriteLine(resultado);