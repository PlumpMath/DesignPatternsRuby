#Client
class Renderer
  def self.render text_object
    text = text_object.text
    size = text_object.size_inches
    color = text_object.color

    puts "Text: #{text}, Size: #{size}, Color: #{color}"
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
  def initialize bto
    @bto = bto
    @format_array_brithish_text = {}
  end

  def text
    @bto.string
  end

  def size_inches
    @bto.size_m/25.4
  end

  def color
    @bto.colour
  end
  
  def format_array
     @format_array_brithish_text = {"text" => @bto.string, 
       "size_inches" => @bto.size_m/25.4, 
       "color" =>@bto.colour}
  end
end

#Adaptee
class BrithishTextObject
  attr_reader :string, :size_m, :colour
  def initialize string, size_m, colour
    @string = string
    @size_m = size_m
    @colour = colour
  end
end

#Using Adapter Pattern
brithishTextObject = BrithishTextObject.new "Hello Alejandro", 15, 10

#adapterObject = BrithishTextObjectAdapter.new brithishTextObject
#Renderer.render adapterObject

adapter = BrithishTextObjectAdapter.new brithishTextObject
Renderer.render_array(adapter.format_array)

