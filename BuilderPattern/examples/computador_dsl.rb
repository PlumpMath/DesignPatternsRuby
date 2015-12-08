require_relative 'computer_model'

dispositivo_salida = DispositivoSalida.new 'LG', 'D2343P', 50000, 'VGA'
dispositivo_entrada = DispositivoEntrada.new 'Genius', 'SlimStar 120', 30000, 'PS2/USB'
cpu = CPU.new 'Acer', 'AG3-605', 1000000

dispositivo_salida.agregar_dispostivo
puts "#{dispositivo_entrada.agregar_dispostivo}"

# computer = Computador.new cpu, dispositivo 
# puts "#{computer}"


