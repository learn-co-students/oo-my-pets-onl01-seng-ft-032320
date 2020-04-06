class Dog
      
  #### Attributes ####
  attr_reader :name
  attr_accessor :owner, :mood
  @@all = []
  
  
  #### Instance Methods ####
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
  
  
  #### Class Methods ####
  def self.all
    @@all
  end
end