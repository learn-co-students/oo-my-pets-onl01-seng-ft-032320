class Cat
  # code goes here
  attr_accessor  :owner, :mood


  @@cats = []

  def initialize(name, owner, mood="nervous")
    @name = name
    @owner = owner
    owner.cats << self
    @mood = mood
    @@cats << self
  end

  def name
    @name
  end

  def self.all
    @@cats
  end






end
