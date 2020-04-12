class Dog

  attr_accessor :owner, :mood


  @@dogs = []

  def initialize(name, owner, mood="nervous")
    @name = name
    @owner = owner
    @mood = mood
    owner.dogs << self
    @@dogs << self
  end

  def name
    @name
  end

  def self.all
    @@dogs
  end
end
