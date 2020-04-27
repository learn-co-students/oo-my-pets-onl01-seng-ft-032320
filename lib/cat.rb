class Cat
 attr_accessor :owner, :mood
 attr_reader :species, :name
 @@all = []
 def initialize(name, owner)
   @name = name
   @species = species
   @owner = owner 
   owner.cats << self
   @mood = "nervous"
   save
 end

def self.all
  @@all
end

def save
  @@all << self
end



 
 
 
end