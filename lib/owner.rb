class Owner
   attr_reader :name, :species
   attr_accessor :dogs, :cats
   
   @@all=[]
  
  def initialize(name)
   @name = name 
   @species = "human"
   @@all << self 
   @dogs = []
   @cats = []
  end
  
  def self.all 
    @@all 
  end 
  
  def say_species
    "I am a #{self.species}."
  end 
  
  def self.count 
    @@all.count 
  end 
  
  def self.reset_all
    @@all.clear
  end 
  
  
  

  
end