require_relative 'linea_orden'
class Producto
  attr_accessor :nombre, :precio, :linea_ordenes
  def initialize(nombre, precio)
    @nombre = nombre
    @precio = precio
    @linea_ordenes = []
  end
end