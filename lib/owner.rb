class Owner
 attr_accessor :pets
 attr_reader :name, :species
 @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:dogs => [], :cats => []}
  end
  
  def cats
    @pets[:cats]
  end
  
  def dogs
    @pets[:dogs]
  end

  def buy_dog(name_of_dog)
    Dog.new(name_of_dog, self)
  end

  def buy_cat(name_of_cat)
    Cat.new(name_of_cat, self)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = 'happy'
        end
      end

  def feed_cats
    @pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end


  def sell_pets
    @pets.collect do |species, pet_array|
      pet_array.each do |pet|
        pet.mood = "nervous"
        pet.owner = nil
      end
      pet_array.clear
      
    end
  end

  def list_pets
    num_dogs = @pets[:dogs].size
    num_cats = @pets[:cats].size
    "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end

  
  def say_species
    "I am a #{@species}." 
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all = []
  end
  
end