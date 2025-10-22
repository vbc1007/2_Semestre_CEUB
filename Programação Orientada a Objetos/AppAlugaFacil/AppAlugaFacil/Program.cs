using AppAlugaFacil.Model;

Cliente cliente = new Cliente();


Console.WriteLine("Informe o nome do cliente");
cliente.nome = Console.ReadLine();

Console.WriteLine("Informe o cpf do cliente");
cliente.cpf = Console.ReadLine();

Console.WriteLine("Informe o numero da CNH do cliente");
cliente.cnh = Console.ReadLine();


Carro carro = new Carro();


Console.WriteLine("Informe a placa do carro");
carro.placa = Console.ReadLine();

Console.WriteLine("Informe o fabricante do carro");
carro.fabricante = Console.ReadLine();

Console.WriteLine("Informe o modelo do carro");
carro.modelo = Console.ReadLine();

Console.WriteLine("Informe o ano do carro");
carro.ano = Convert.ToInt32(Console.ReadLine());

Console.WriteLine("Informe a cor do carro");
carro.cor = Console.ReadLine();

Console.WriteLine("Informe o valor da diária do carro");
carro.valorDiaria = Convert.ToDouble(Console.ReadLine());

Locacao locacao = new Locacao();

Console.WriteLine("Informe o valor locado");
locacao.valorLocado = Convert.ToDouble(Console.ReadLine());

Console.WriteLine("Informe a data do inicio da locação");
locacao.dataInicio = Convert.ToDateTime(Console.ReadLine());

Console.WriteLine("Informe a data do fim da locação");
locacao.dataFim = Convert.ToDateTime(Console.ReadLine()); 

Console.WriteLine(carro.ImprimirCarro());
Console.WriteLine(cliente.ImprimirCliente());
Console.WriteLine(locacao.ImprimirLocacao());


