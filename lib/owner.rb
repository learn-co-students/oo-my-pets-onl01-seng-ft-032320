require 'pry'
class Owner
  attr_reader :species, :name
  attr_accessor :cats, :dogs
  
  @@all = []
  def initialize(name)
    # binding.pry
    @name = name
    @species = "human"
    @@all << self
    @dogs = []
    @cats = []
  end
  
  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end
  
  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end
  
  def feed_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end
  
  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end
  
  def walk_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    self.cats.each do |cat| 
     self.cats.delete(cat)
     cat.owner = nil
     cat.mood = "nervous"
     end
    self.dogs.each do |dog| 
      dog.mood = "nervous" 
      self.dogs.delete(dog)
      dog.owner = nil
      dog.owner = nil
     end
  end
  
  def list_pets
      "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
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
    @@all.clear
  end
  
end