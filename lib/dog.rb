class Dog
  
  @@all = []
  
  attr_accessor :owner, :mood
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @species = "canine"
    @@all << self
  end
  
  def name
    @name
  end
  
  def self.all
    @@all
  end
  
  def species
    @species
  end
  
end

