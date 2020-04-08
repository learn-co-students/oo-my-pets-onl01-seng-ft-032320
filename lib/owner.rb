class Owner
  attr_accessor :cats, :dogs
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
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
    @@all.clear
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def sell_pets
    cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    @cats = []
    dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    @dogs = []
  end
  
  def walk_dogs
    @dogs.each do |dog|
      puts "Walking the dog"
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    @cats.each do |cat|
      puts "Feeding the cat"
      cat.mood = "happy"
    end
  end
  
  def list_pets
    "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
  end
  
  
end