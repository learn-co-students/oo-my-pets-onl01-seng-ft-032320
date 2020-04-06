require 'pry'

class Cat
  # code goes here
  attr_accessor :mood, :owner
  attr_reader :name
  
  @@all = []
  
  def initialize(name, owner)
    @owner = owner
    owner.pets << self 
    @name = name
    @mood = "nervous"
    @@all << self 
  end
  
  def self.all
    @@all 
  end 
  
end