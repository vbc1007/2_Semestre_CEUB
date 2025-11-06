using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExemploInterface.Model
{
    public class Fornecedor:IDAO 
    {
        private string cnpj;
        private string razaoSocial;

        public string Cnpj { get => cnpj; set => cnpj = value; }
        public string RazaoSocial { get => razaoSocial; set => razaoSocial = value; }

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
