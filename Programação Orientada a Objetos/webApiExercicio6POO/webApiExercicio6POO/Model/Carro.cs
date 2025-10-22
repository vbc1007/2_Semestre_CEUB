namespace webApiExercicio6POO.Model
{
    public class Carro
    {
        public string marca;
        public string modelo;
        public string placa;
        public string cor;
        public Int32 ano;
        public Int32 numeroMarchas;
        public Int32 anoFabricacao;
        public Int32 anoModelo;
        public Int32 velocidade;
        public bool ligar;
        public bool desligar;

        public Carro()
        {
            ligar = false;
            desligar = true;
            velocidade = 0;
        }

        public Carro(string placa)
        {
            this.placa = placa;
        }

        public string Buzinar()
        {
            return "BIIIIIIIIIIIIIIIIIIII";
        }
        public void Acelerar()
        {
            //velocidade = velocidade + 10;
            velocidade += 10;
        }
        public void Ligar()
        {
            ligar = true;
            desligar = false;
        }
        public void Desligar()
        {
            ligar = false;
            desligar = true;
        }
    }
}
