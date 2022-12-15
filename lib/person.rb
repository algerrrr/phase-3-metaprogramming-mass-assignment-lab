class Person
  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end

end

attributes = {name:"alger", hair_color:"black", eye_color:"black"}

p1 = Person.new(attributes)
puts p1.name