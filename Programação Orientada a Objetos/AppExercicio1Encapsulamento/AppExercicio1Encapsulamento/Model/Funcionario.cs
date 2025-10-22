using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppExercicio1Encapsulamento.Model
{
    public class Funcionario
    {
        private string nome;
        private DateTime dataNascimento;
        private double salario;
        private Int32 numeroFilhos;
        private string areaAtuacao;

        public Funcionario()
        {
        }

        public Funcionario(string nome)
        {
            this.nome = nome;
        }

        public string Nome { get => nome; set => nome = value; }
        public DateTime DataNascimento { get => dataNascimento; set => dataNascimento = value; }
        public double Salario { get => salario; set => salario = value; }
        public int NumeroFilhos { get => numeroFilhos; set => numeroFilhos = value; }
        public string AreaAtuacao { get => areaAtuacao; set => areaAtuacao = value; }
    }
}
