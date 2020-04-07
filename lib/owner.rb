class Owner
  attr_reader :name, :species
  @@all = []
  def initialize(name, species="human")
    @name= name
    @species= species
    @@all << self
  end

  def say_species
     "I am a #{self.species}."
  end
  
  def self.all
    @@all
  end

   def self.count
    self.all.count {|owner| owner}
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    Cat.all.select do |cat| 
      cat.owner == self
    end
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner ==self}
  end
  
  def buy_cat(cat_name)
    cat = Cat.new(cat_name, self)
    self.cats << cat
  end
  
  def buy_dog(dog_name)
    dog = Dog.new(dog_name, self)
    self.dogs << dog
  end
  
  def walk_dogs
    Dog.all.map {|dog| dog.mood = "happy"}.join("")
  end
  
  def feed_cats
    Cat.all.map {|cat| cat.mood = "happy"}.join("")
  end
  
  def sell_pets
    self.cats.map {|cat| cat.mood = "nervous"}.join(", ")
    self.dogs.map {|dog| dog.mood = "nervous"}.join(", ")

    self.cats.map {|cat| cat.owner = nil}
    self.dogs.map {|dog| dog.owner = nil}
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end