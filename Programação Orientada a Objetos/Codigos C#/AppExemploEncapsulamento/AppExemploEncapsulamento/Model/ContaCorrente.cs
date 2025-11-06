using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppExemploEncapsulamento.Model
{
    public class ContaCorrente
    {
        public string numeroConta;
        public string titular;
        public double saldo;

        public ContaCorrente(string numeroConta, string titular, double saldo)
        {
            this.numeroConta = numeroConta;
            this.titular = titular;
            this.saldo = saldo;
        }

        public ContaCorrente(double saldo)
        {
            this.saldo = saldo;
        }
        public void Depositar(double valor)
        {
            //saldo = saldo + valor;
            saldo += valor;
        }
        public void Sacar(double valor)
        {
            //saldo = saldo - valor;
            saldo -= valor;
        }
        public string Extrato()
        {
            string resultado = $"Nº Conta :{numeroConta}\r\n" +
                               $"Titular {titular}\r\n" +
                               $"Saldo {saldo}";
            return resultado;
        }
    }
}
