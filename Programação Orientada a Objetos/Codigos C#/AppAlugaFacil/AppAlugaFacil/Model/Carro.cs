using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppAlugaFacil.Model
{
    public class Carro
    {
        public Int32 idCarro;
        public string placa;
        public string fabricante;
        public string modelo;
        public Int32 ano;
        public string cor;
        public double valorDiaria;
        public string ImprimirCarro()
        {
            string resultado;
            resultado = $"{idCarro}, {placa}, {fabricante}, {modelo}, {ano}, {cor}, {valorDiaria}";
            return resultado;  
        }
    }
}
