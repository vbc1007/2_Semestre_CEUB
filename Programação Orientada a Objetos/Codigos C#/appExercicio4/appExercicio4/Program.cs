Int32 idade;
string resultado;

Console.WriteLine("Informe sua idade");
idade = Convert.ToInt32(Console.ReadLine());

//Operador Ternário

resultado = (idade >= 18) ? $"a idade {idade} é maior ou igual a 18 anos": resultado = $"a idade {idade} é menor ou igual a 18 anos";

//if (idade >= 18)
//{
//    resultado = $"a idade {idade} é maior ou igual a 18 anos";
//}

//else
//{
//    resultado = $"a idade {idade} é menor ou igual a 18 anos";
//}

Console.WriteLine(resultado);



