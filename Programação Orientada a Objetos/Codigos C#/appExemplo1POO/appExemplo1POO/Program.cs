using appExemplo1POO;
using appExemplo1POO.Model;

//Criando vários objetos pessoal
Pessoa pessoal = new Pessoa();
pessoal.nome = "JOSÉ DAS COUVES";
pessoal.dataNascimento = Convert.ToDateTime("22/04/1975");
pessoal.cpf = "555.555.555-91";
pessoal.nomeMae = "MARIA JOSE";
pessoal.nomePai = "JOÃO DAS COUVES";
pessoal.sexo = "MASCULINO";
Console.WriteLine(pessoal.ImprimirPessoa());

//Criando vários objetos pessoa 2
Pessoa pessoa2 = new Pessoa();
pessoa2.nome = "LARA DAS COUVES";
pessoa2.dataNascimento = Convert.ToDateTime("22/04/1975");
pessoa2.cpf = "555.555.555-91";
pessoa2.nomeMae = "LIRIS JOSE";
pessoa2.nomePai = "MURILO DAS COUVES";
pessoa2.sexo = "FEMININO";
Console.WriteLine(pessoa2.ImprimirPessoa());