class Dog
  attr_accessor :id, :name, :breed
  def initialize(attributes)
    attributes.each {|key, var| self.send("#{key}=", value)}
  end

  def self.create(attributes)
    Dog.new(attributes)
  end

end
