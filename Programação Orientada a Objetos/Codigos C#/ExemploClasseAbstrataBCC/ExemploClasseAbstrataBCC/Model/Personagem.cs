using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExemploClasseAbstrataBCC.Model
{
    public abstract class Personagem
    {
        public string Nome {  get; set; }
        public int Vida { get; set; }
        public int Nivel { get; set; }
        
        public abstract void UsarHabilidade();
    }
}
