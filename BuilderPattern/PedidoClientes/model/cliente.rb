class Cliente
  attr_accessor :nombre, :direccion, :pedidos
  def initialize(nombre, direccion)
    @nombre = nombre
    @direccion = direccion
    @pedidos = []
  end
end