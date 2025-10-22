using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace appContaCorrente.Model
{
    public class ContaCorrente
    {
        public Int32 numeroConta;
        public string nomeBanco;
        public string nomeAgencia;
        public string nomeCliente;

        public string imprimirContaCorrente()
        {
            string resultado;
            resultado = $"{numeroConta}, {nomeBanco}, {nomeAgencia}, {nomeCliente}";
            return resultado ;
        }
    }
    }
