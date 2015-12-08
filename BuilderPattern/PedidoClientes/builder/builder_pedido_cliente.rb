require_relative '../model/cliente_corporativo'
require_relative '../model/producto'
require_relative '../model/linea_orden'
require_relative '../model/pedido'
class BuilderPedidoCliente
  attr_accessor :cliente, :producto, :pedido
  def cliente_corporativo(nombre_contacto, limite_credito, nombre, direccion)
    @cliente = ClienteCorporativo.new(nombre_contacto, limite_credito, nombre, direccion)
  end

  def cliente_personal(tarjeta_personal, nombre, direccion)
    @cliente = ClientePersonal.new(tarjeta_personal, nombre, direccion)
  end

  def producto(nombre, precio, cantidad)
    @producto = Producto.new(nombre, precio)
    @pedido.linea_ordenes  <<  @producto
    @producto.linea_ordenes << LineaOrden.new(@producto, cantidad)
  end

  def pedido(fecha_recibido)
    @pedido = Pedido.new(fecha_recibido)
  # @pedido.linea_ordenes << @producto.linea_ordenes
    @cliente.pedidos << @pedido
  end
end

# Director
builder = BuilderPedidoCliente.new
builder.cliente_corporativo("Jhon", 230000, "Stark Industries", "NY")
builder.pedido "30-05-2015"
builder.producto "producto1", 1000, 3
builder.producto "producto2", 4000, 40

cliente_pedido = builder.cliente
puts "#{cliente_pedido}"

