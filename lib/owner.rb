class Owner
   attr_reader :name, :species
   attr_accessor :dogs, :cats, :pets 
   
   @@all=[]
  
  def initialize(name)
   @name = name 
   @species = "human"
   @@all << self 
   @dogs = [] 
   @cats = []
   
  end
  
  def self.all 
    @@all 
  end 
  
  def say_species
    "I am a #{self.species}."
  end 
  
  def self.count 
    @@all.count 
  end 
  
  def self.reset_all
    @@all.clear
  end 

  def buy_cat(name)
    Cat.new(name,self)
    
  end 
  
  def buy_dog(name)
    Dog.new(name,self)
    
  end
  
  def sell_pets
    
    @dogs.zip(@cats).each do |dog, cat| 
      dog.owner = nil
      dog.mood = "nervous"
      cat.owner = nil 
      cat.mood = "nervous"
      
    end 
  @cats = []
  @dogs = []
  end 
  
  def walk_dogs
    @dogs.each do |dog| dog.mood = "happy"
  end 
  end 
  
  def feed_cats 
    @cats.each do |cat| cat.mood = "happy"
  end 
  end 
  
  def list_pets
    
    "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end 
  
  

  
end