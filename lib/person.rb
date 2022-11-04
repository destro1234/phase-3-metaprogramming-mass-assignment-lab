class Person
  # your code here

  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", attributes[key])
    end
  end
end
