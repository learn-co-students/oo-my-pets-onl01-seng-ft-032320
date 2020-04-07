class Owner
   
  @@all = []
  
  attr_accessor
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def name
    @name
  end
  
  
  def species
    @species
  end
    
  def say_species
    "I am a #{self.species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def cats
     Cat.all.select {|cats| cats.owner == self}
  end
  
  def dogs
     Dog.all.select {|dogs| dogs.owner == self}
  end
  
  def buy_cat(name)
    cat = Cat.new(name, self)
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
  end

  def walk_dogs
    Dog.all.select {|i| i.mood = "happy"}
  end
  
  def feed_cats
    Cat.all.select {|i| i.mood = "happy"}
  end
  
  def sell_pets
    Dog.all.select {|i| i.mood = "nervous"}
    Cat.all.select {|i| i.mood = "nervous"}
    Cat.all.each {|i| i.owner = nil} 
    Dog.all.each {|i| i.owner = nil}
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  
end