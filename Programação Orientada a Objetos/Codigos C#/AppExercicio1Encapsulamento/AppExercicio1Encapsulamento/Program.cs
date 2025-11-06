using AppExercicio1Encapsulamento.Model;

Funcionario funcionario = new Funcionario();

Console.WriteLine("Informe o nome do Funcionário");
funcionario.Nome = Console.ReadLine();

Console.WriteLine("Informe a data de nascimento do Funcionário");
funcionario.DataNascimento = Convert.ToDateTime(Console.ReadLine());

Console.WriteLine("Informe o salário do Funcionário");
funcionario.Salario = Convert.ToDouble(Console.ReadLine());

Console.WriteLine("Informe quantos filhos possui o Funcionário");
funcionario.NumeroFilhos = Convert.ToInt32(Console.ReadLine());

Console.WriteLine("Informe qual a categoria de atuação do Funcionário");
funcionario.AreaAtuacao = Console.ReadLine();

string resultado = $"Nome {funcionario.Nome}\r \n" +
                   $"Data de Nascimento {funcionario.DataNascimento}\r\n" +
                   $"Salário R$ {funcionario.Salario}";
Console.WriteLine(resultado);