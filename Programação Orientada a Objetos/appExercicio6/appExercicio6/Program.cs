double numero;
string resultado;

Console.WriteLine("Insira um número");
numero = Convert.ToDouble(Console.ReadLine());

resultado = (numero > 0) ? "Positivo" : (numero < 0) ? "Negativo" : "Zero";

//if (numero > 0)
//{
//    resultado = "Positivo";
//}

//else if (numero < 0)
//{
//    resultado = "Negativo";
//}

//else
//{
//    resultado = "Zero";
//}

Console.WriteLine(resultado);