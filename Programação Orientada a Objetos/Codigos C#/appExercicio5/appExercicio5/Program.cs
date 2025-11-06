double nota;
string resultado;

Console.WriteLine("Insira sua nota");
nota = Convert.ToDouble(Console.ReadLine());

//Terneario

resultado = (nota >= 7) ? "Você está aprovado!" : (nota >= 5 && nota < 7) ? "Você está de recuperação!" : "Você esta reprovado!";

//if (nota >= 7)
//{
//    resultado = "Você está aprovado!";
//}

//else if (nota >= 5 && nota < 7)
//{
//    resultado = "Você está de recuperação!";
//}

//else
//{
//    resultado = "Você está reprovado!";
//}

Console.WriteLine(resultado);