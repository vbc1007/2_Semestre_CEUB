using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExemploClasseAbstrataBCC.Model
{
    internal class Mago : Personagem
    {
        public override void UsarHabilidade()
        {
            Console.WriteLine($"O mago {Nome} lançou um feitiço!");
        }
    }
}
