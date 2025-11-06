using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExemploInterface.Model
{
    public interface IDAO
    {
        public void Inserir();
        public void Excluir(int id);
        public void Localizar();
    }
}
