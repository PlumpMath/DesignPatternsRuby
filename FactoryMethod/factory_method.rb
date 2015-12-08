require_relative 'frog'

class Pond
  def initialize(number_animals)
    @animals = []
    number_animals.times do |i|
      animal = new_animal("Animal #{i}")
      @animals << animal
    end
  end

  def simulate_one_day
    @animals.each {|animal| animal.speak}
    @animals.each {|animal| animal.eat}
  end
end

class FrogPond < Pond
  #Define factory method
  def new_animal(name)
    Frog.new(name)
  end

end

pond = FrogPond.new(3)
pond.simulate_one_day
