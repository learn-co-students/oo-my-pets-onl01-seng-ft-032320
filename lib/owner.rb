require 'pry'

class Owner
  attr_accessor :pets
  attr_reader :name, :species 
  
  @@all = []
  
  def initialize(name, species = "human")
    @species = species
    @name = name
    @pets = []
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def say_species
    return "I am a #{@species}."
  end 
  
   def self.count 
    self.all.length 
  end 
  
  def self.reset_all 
    self.all.clear
  end 
  
  def cats
    #binding.pry
    Cat.all.select {|cat| self == cat.owner} 
  end 
  
  def dogs
    #binding.pry
   Dog.all.select {|dog| self == dog.owner} 
  end 
  
  def buy_cat(name)
    owner_cat = Cat.new(name, self)
     #binding.pry
  end 
  
  def buy_dog(name)
    owner_dog = Dog.new(name, self)
  end 
  
  def walk_dogs 
    dogs = self.dogs
    dogs.each do |dog|
      dog.mood = 'happy'
    end 
  end 
    
  def feed_cats
    cats = self.cats
    cats.each do |cat|
      cat.mood = 'happy'
    end 
  end 
  
  def sell_pets
    pets = self.dogs + self.cats
     pets.each do |pet|
      pet.mood = 'nervous'
      pet.owner = nil
    end 
   end 
  
  
  def list_pets 
    num_cats = self.cats.size
    num_dogs = self.dogs.size
    #num_dogs = dogs.length
    #num_cats = cats.length
 
    return "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end 
  

end 