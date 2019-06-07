class Dog < ActiveRecord::Base
  attr_accessor :id, :name, :breed
  def initialize(attributes)
    attributes.each {|key, var| self.send("#{key}=", value)}
  end


end
