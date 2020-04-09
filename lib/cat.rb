class Cat
  attr_accessor :owner, :mood
  attr_reader :name 
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner #belongs to
    owner.pets[:cats] << self #has many
    @mood = "nervous"
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  
  
end