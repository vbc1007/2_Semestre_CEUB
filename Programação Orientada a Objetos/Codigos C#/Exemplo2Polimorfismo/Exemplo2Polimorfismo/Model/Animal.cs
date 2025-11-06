using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exemplo2Polimorfismo.Model
{
    public class Animal
    {
        private string nome;
        private int numerosPatas;

        public string Nome { get => nome; set => nome = value; }
        public int NumerosPatas { get => numerosPatas; set => numerosPatas = value; }

        public virtual string EmitirSom()
        {
            return "Som do animal";
        }
    }
}
