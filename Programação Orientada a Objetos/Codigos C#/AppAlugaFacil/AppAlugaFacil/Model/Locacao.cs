using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppAlugaFacil.Model
{
    public class Locacao
    {
        public Int32 idLocacao;
        public Int32 idCarro;
        public Int32 idCliente;
        public double valorLocado;
        public DateTime dataInicio;
        public DateTime dataFim;

        public string ImprimirLocacao()
        {
            string resultado;
            resultado = $"{idLocacao}, {idCarro}, {idCliente}, {valorLocado}, {dataInicio}, {dataFim}";
            return resultado;  
        }
    }
}
