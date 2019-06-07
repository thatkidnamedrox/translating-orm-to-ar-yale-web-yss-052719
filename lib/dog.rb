class Dog < ActiveRecord::Base
  attr_accessor :id, :name, :breed
  def initialize(attributes)
    attributes.each {|key, value| self.send("#{key}=", value)}
  end

  def self.create(attributes)
    Dog.new(attributes)
  end

end
