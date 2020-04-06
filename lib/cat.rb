class Cat
  # code goes here
  attr_accessor :owner, :mood
  
  @@all = []
  
  def initialize (name, owner_name)
    @name = name
    owner_obj = Owner.new(owner_name)
    @owner = owner_obj.name
    @mood = "nervous"
    @owner.cats << self
    @@all << self
  end
  
  def name
    @name
  end
  
  # Class Methods
  
  def self.all
    @@all
  end
end