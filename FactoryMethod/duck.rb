class Duck
  def initialize(name)
    @name = name
  end
  
  def eat
    puts "Duck #{@name} is eating"
  end
  
  def speak
    puts "Duck #{@name} say Quaaack!!"
  end
end