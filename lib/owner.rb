class Owner 
  attr_reader :species, :name
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select{|c| c.owner == self}
  end
  
  def dogs
    Dog.all.select{|d| d.owner == self}
  end

  def buy_cat(name)
    name = Cat.new(name, self)
  end
  
  def buy_dog(name)
    name = Dog.new(name, self)
  end

  def walk_dogs
    Dog.all.collect {|d| d.mood = "happy"}
  end

  def walk_cats
    Cat.all.collect {|c| c.mood = "happy"}
  end

  def feed_cats
    Cat.all.collect {|c| c.mood = "happy"}
  end

  def sell_pets
    Cat.all.collect {|c| c.mood = "nervous"}
    Dog.all.collect {|d| d.mood = "nervous"}
    Cat.all.collect {|c| c.owner = nil}
    Dog.all.collect {|d| d.owner = nil}
  end

  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
end