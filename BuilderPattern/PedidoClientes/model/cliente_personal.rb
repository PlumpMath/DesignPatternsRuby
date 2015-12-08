require_relative 'cliente'

class ClientePersonal < Cliente
  attr_accessor :tarjeta_personal
  def initialize(tarjeta_personal, nombre, direccion)
    @tarjeta_personal = tarjeta_personal
    super(nombre, direccion)
  end
end