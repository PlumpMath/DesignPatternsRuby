require_relative 'producto'
class LineaOrden
  attr_accessor :cantidad, :producto
  def initialize(producto, cantidad)
    @cantidad = cantidad
    @producto = producto
  end
end