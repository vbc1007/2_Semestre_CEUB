using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace appExemplo1POO.Model
{
    public class Pessoa
    {
        //Atributos
        public string nome;
        public DateTime dataNascimento;
        public string nomeMae;
        public string nomePai;
        public string cpf;
        public string sexo;
        //Método
        public string ImprimirPessoa()
        {
            string resultado;
            resultado = $"CPF: {cpf}\r\n Nome: {nome}\r\n Sexo: {sexo}\r\n Data Nascimento: {dataNascimento}";
            return resultado;
        }
        public void Inserir()
        {
            Console.WriteLine("Você inseriu um registro");
        }
        public void Alterar()
        {
            Console.WriteLine("Você alterou um registro");
        }
    }
}
