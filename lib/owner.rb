class Owner
  attr_reader :name, :species #can have a name, cannot change owner's name. Same case for species
  
  @@all = []
  
  def initialize(name)
    @@all << self
    @name = name 
    @species = "human"
    
  end 
  
  def say_species 
    "I am a #{self.species}."
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.count
    self.all.length
  end 
  
  def self.reset_all
    self.all.clear
  end 
  
end