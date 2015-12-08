# MODEL 2
class Computer
  attr_accessor :display, :motherboard
  attr_reader :drives
  def initialize(display= :crt, motherboard= Motherboard.new, drives = [])
    @motherboard = motherboard
    @drives = drives
    @display = display
  end
end

class DesktopComputer < Computer
# Lots of interesting desktop details omitted...
end

class LaptopComputer < Computer
  def initialize(motherboard=Motherboard.new, drives=[] )
    super(:lcd, motherboard, drives)
  end
end

class CPU
#common CPU stuff
end

class BasicCPU < CPU
# Lots of not very fast CPU-related stuff...
end

class TurboCPU < CPU
# Lots of very fast CPU stuff...
end

class Motherboard
  attr_accessor :cpu, :memory_size
  def initialize(cpu = BasicCPU.new, memory_size=1000)
    @cpu = cpu
    @memory_size = memory_size
  end
end

class Drive
  attr_reader :type, :size, :writable
  def initialize(type, size, writable)
    @type = type
    @size = size
    @writable = writable
  end
end

# Build a fast computer with lots of memory...
# motherboard = Motherboard.new(TurboCPU.new, 4000)
# # ...and a hard drive, a CD writer, and a DVD
# drives = []
# drives << Drive.new(:hard_drive, 200000, true)
# drives << Drive.new(:cd, 760, true)
# drives << Drive.new(:dvd, 4700, false)
# computer = Computer.new(:lcd, motherboard, drives)

