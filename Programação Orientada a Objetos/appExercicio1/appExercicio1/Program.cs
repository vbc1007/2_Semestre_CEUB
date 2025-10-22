string nome, endereco, telefone, resultado;

Console.WriteLine("Informe o seu Nome");
    nome = Console.ReadLine();

Console.WriteLine("Informe o seu Endereço");
    endereco = Console.ReadLine();

Console.WriteLine("Informe o seu Telefone");
    telefone = Console.ReadLine();

resultado = $"Nome: {nome}\r\nEndereço: {endereco}\r\nTelefone{telefone}";
    Console.WriteLine(resultado);
