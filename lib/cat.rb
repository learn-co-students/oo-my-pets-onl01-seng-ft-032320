class Cat
 attr_accessor :owner, :mood
 attr_reader :species, :name
 @@all = []
 def initialize(name, owner)
   @name = name
   @species = species
   @owner = owner 
   @mood = "nervous"
   save
 end

def self.all
  @@all
end

def self.owner=(owner)
  @owner = owner
end

def save
  @@all << self
end



 
 
 
end