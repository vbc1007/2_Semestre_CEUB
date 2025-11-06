using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExemploClasseAbstrataBCC.Model
{
    public class Guerreiro : Personagem
    {
        public override void UsarHabilidade()
        {
            Console.WriteLine($"O guerreiro {Nome} usou a espada!")
        }
    }
}
