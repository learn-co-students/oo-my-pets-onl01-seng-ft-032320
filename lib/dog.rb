class Dog
  
  attr_accessor :owner, :mood
  
  @@all = []
  def initialize (name, owner_name)
    @name = name
    owner_obj = Owner.new(owner_name)
    @mood = "nervous"
    @owner = owner_obj.name
    @owner.dogs << self
    @@all << self
    
  end
  
  def name
    @name
  end
  
  def mood
    @mood
  end
  
  # Class Methods
  
  def self.all
    @@all 
  end
end