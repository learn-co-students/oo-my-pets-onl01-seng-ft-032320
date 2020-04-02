class Owner 
  attr_reader :name, :species 

  @@all = []

  def initialize(name) 
    @name = name 
    @species = "human"
    @@all << self
  end
  
  def say_species
    "I am a #{species}."
  end 

  def cats 
    Cat.all.select{|cat| cat.owner == self}
  end 

  def dogs 
    Dog.all.select{|dog| dog.owner == self}
  end 

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end 

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end 

  def walk_dogs
    dogs.each {|dog| dog.mood = "happy"}
  end 

  def feed_cats 
    cats.each{|cat| cat.mood = "happy"}
  end 

  def list_pets
    "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
  end

  def sell_pets 
    animals = [dogs,cats]
    animals.each do |species|
      species.each do |animal|
        animal.owner = nil
        animal.mood = "nervous"
      end 
    end 
  end 
      

  def self.all 
    @@all
  end 
  
  def self.reset_all
    @@all.clear
  end 

  def self.count
    self.all.length
  end 

end