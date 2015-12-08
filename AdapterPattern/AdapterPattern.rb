#Client
class Renderer
  attr_reader :adapter_brithish_object
  def initialize brithish_adapter
    @adapter_brithish_object = brithish_adapter
  end

  def self.render_array text_object_array
    text = text_object_array["text"]
    size = text_object_array["size"]
    color = text_object_array["color"]

    puts "#{self.name} Text: #{text}, Size: #{size}, Color: #{color}"
  end

end

#Target
class TextObject
  attr_reader :text, :size_inches, :color
  def initialize
    @text = text
    @size_inches = size_inches
    @color = color
  end

  def format_array
    raise NotImplementedError, "#{self.class} method not implemented"
  end

end

#Adapter
class BrithishTextObjectAdapter < TextObject
  attr_reader :brithish_object
  def initialize brithish_text_object
    @brithish_object = brithish_text_object
    @format_array_brithish_text = {}
  end

  def format_array
    string = @brithish_object.string
    size_m = @brithish_object.size_m
    colour = @brithish_object.colour

    return @format_array_brithish_text = {"text" => string,
       "size_inches" => size_m/25.4,
       "color" =>colour}
  end
end

#Adaptee
class BrithishTextObject
  attr_accessor :string, :size_m, :colour
  def initialize string, size_m, colour
    @string = string
    @size_m = size_m
    @colour = colour
  end

end

#Using Adapter Pattern
brithish_text_object = BrithishTextObject.new "Hello Alejandro", 15, 10
adapter_references = BrithishTextObjectAdapter.new brithish_text_object

Renderer.render_array(adapter_references.format_array)
puts Renderer.new(adapter_references).adapter_brithish_object.format_array
