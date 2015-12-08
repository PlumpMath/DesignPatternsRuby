class Pedido
  attr_accessor :fecha_pedido, :linea_ordenes
  def initialize(fecha_pedido)
    @fecha_pedido  =fecha_pedido
    @linea_ordenes = []
  end
end