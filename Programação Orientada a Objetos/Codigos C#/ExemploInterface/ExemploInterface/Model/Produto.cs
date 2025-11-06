using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExemploInterface.Model
{
    public class Produto:IDAO
    {
        private int numero;
        private string descricao;

        public int Numero { get => numero; set => numero = value; }
        public string Descricao { get => descricao; set => descricao = value; }

        public void Baixar()
        {
            //Fazer o método
        }

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
