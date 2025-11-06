using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExemploInterface.Model
{
    public class Cliente:IDAO
    {
        private int codigo;
        private string nome;

        public int Codigo { get => codigo; set => codigo = value; }
        public string Nome { get => nome; set => nome = value; }

        public void Excluir(int id)
        {
            throw new NotImplementedException();
        }

        public void Inserir()
        {
            throw new NotImplementedException();
        }

        public void Localizar()
        {
            throw new NotImplementedException();
        }
    }
}
