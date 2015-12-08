class Computador
  attr_accessor :cpu, :dispositivo
  def initialize cpu, dispositivo
    @cpu = cpu
    @dispositivo = dispositivo
  end
end

class CPU
  attr_accessor :nombre_fabricante_cpu, :modelo_cpu, :precio_cpu
  def initialize nombre_fabricante_cpu, modelo_cpu, precio_cpu
    @nombre_fabricante_cpu = nombre_fabricante_cpu 
    @modelo_cpu = modelo_cpu
    @precio_cpu = precio_cpu
  end
end

class Dispositivo
  attr_accessor :nombre_fabricante_dispositivo, :modelo_dispositivo, :precio_dispositivo
  attr_accessor :dispositivos
  def initialize nombre_fabricante_dispositivo, modelo_dispositivo, precio_dispositivo
    @nombre_fabricante_dispositivo = nombre_fabricante_dispositivo
    @modelo_dispositivo = modelo_dispositivo
    @precio_dispositivo = precio_dispositivo
    @@dispositivos = []
  end
  
  def agregar_dispostivo 
    @@dispositivos << self
  end
  
  def mostrar_dispositivos
    @@dispositivos
  end
end

class DispositivoSalida < Dispositivo
  attr_accessor :puerto_dispositivo_salida
  
  def initialize nombre_fabricante_dispositivo, modelo_dispositivo, precio_dispositivo, puerto_dispositivo_salida
    @puerto_dispositivo_salida = puerto_dispositivo_salida
    super nombre_fabricante_dispositivo, modelo_dispositivo, precio_dispositivo
  end
end

class DispositivoEntrada < Dispositivo
  attr_accessor :tipo_conector_dispositivo_entrada
  
  def initialize nombre_fabricante_dispositivo, modelo_dispositivo, precio_dispositivo, tipo_conector_dispositivo_entrada
    @tipo_conector_dispositivo_entrada = tipo_conector_dispositivo_entrada
    super nombre_fabricante_dispositivo, modelo_dispositivo, precio_dispositivo
  end
end
