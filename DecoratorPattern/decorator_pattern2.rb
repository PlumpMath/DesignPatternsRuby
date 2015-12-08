class VisualComponent
  def draw line
    raise 'Called abstract method: draw'
  end
end

class Decorator < VisualComponent
  def initialize component
    @component = component
  end
  def draw line
    @component.draw line
  end
end

class BorderDecorator < Decorator
  def draw line
    @component.draw("2 px border: #{line}") 
  end
end

class ScrollDecorator < Decorator
  def draw line
    @component.draw("Horizontal scroll: #{line}") 
  end
end

class TextView < VisualComponent
  def draw line
    puts line
  end
end

line = ScrollDecorator.new(BorderDecorator.new(TextView.new))
line.draw "nueva linea"
