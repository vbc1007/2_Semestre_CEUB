namespace BlazorVendas.Model
{
    public class Pedido
    {
        public Int32 Id { get; set; }
        public DateTime DataPedido { get; set; }
        public Int32 FuncionarioId { get; set; }
        public Int32 ClienteId { get; set; }
        public double ValorTotal { get; set; }

        public void RegistrarVenda()
        {

        }

        public void ListarVenda()
        {

        }
    }
}
