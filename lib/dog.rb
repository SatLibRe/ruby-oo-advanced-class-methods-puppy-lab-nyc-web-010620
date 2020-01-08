require "pry"

class Dog 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all.push(self)
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.clear_all 
    @@all.clear
  end 
  
  def self.print_all
    @@all.each do |name|
      binding.pry 
    end 
  end 
end 