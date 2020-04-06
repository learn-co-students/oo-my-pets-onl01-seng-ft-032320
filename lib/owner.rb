class Owner
  
  #### Attributes ####
  attr_reader :name, :species
  @@all = []
  
  
  #### Instance Methods ####
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def cats
    Cat.all.select {|cat_obj| cat_obj.owner == self}
  end
  
  def dogs
    Dog.all.select {|dog_obj| dog_obj.owner == self}
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    my_dogs = dogs
    my_dogs.each {|dog_obj| dog_obj.mood = "happy"}
  end
  
  def feed_cats
    my_cats = cats
    my_cats.each {|cat_obj| cat_obj.mood = "happy"}
  end
  
  def sell_pets
    my_pets = []
    my_pets << dogs
    my_pets << cats
    my_pets.flatten.each do |pet| 
      pet.mood = "nervous"
      pet.owner = nil
    end
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  
  
  #### Class Methods ####
  def self.all
    @@all
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    @@all = []
  end
end