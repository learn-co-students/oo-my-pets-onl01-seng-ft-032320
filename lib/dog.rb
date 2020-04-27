class Dog
 attr_accessor :owner, :mood
 attr_reader :species, :name
 @@all = []
 def initialize(name, owner)
   @name = name
   @species = species
   @owner = owner 
   owner.dogs << self
   @mood = "nervous"
   @@all << self
 end

def self.all
  @@all
end
 
end