require_relative 'cliente'

class ClienteCorporativo < Cliente
  attr_accessor :nombre_contacto, :limite_credito
  def initialize(nombre_contacto, limite_credito, nombre, direccion)
    @nombre_contactto = nombre_contacto
    @limite_credito = limite_credito
    super(nombre, direccion)
  end
end
  