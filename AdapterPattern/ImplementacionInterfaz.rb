class Client
  attr_accessor :references_to_adapter
  def initialize
    @references_to_adapter = Adapter.new
  end
end

class Target
  def request 
    raise NotImplementedError, "Sorry, method not implemented by #{self.class}" 
  end
end

class Adapter < Target
  attr_accessor :references_to_adaptee
  def initialize
    @references_to_adaptee = Adaptee.new
  end
  
  # def request 
    # result = @references_to_adaptee.specificRequest
    # result + " is Now implemented by #{self.class.name} class"
  # end
  
  # def request 
    # make_refences_to_adaptee
    # result = references_to_adaptee.specificRequest
    # result + " is Now implemented by #{self.class.name} class"
  # end
  
  def make_refences_to_adaptee
    @references_to_adaptee = Adaptee.new
  end
end

class Adaptee
  def specificRequest
    "specificRequest method"
  end    
end

# Adapter.new.request
# puts Client.new.references_to_adapter.request

puts Client.new.references_to_adapter.request
