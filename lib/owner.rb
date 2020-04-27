class Owner
attr_accessor :cats, :dogs, :pets
attr_reader :name, :species 

@@all = []
def initialize(name)
  @cats = []
  @dogs = []
  @name = name
  @species = "human"
  @@all << self
end

def say_species
  return "I am a #{@species}."
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
   name = Cat.new(name, self)
 end
 
 def buy_dog(name)
   name = Dog.new(name, self)
 end

 def walk_dogs
   self.dogs.each {|dog| dog.mood = "happy"}
 end
 
 def feed_cats
   self.cats.each {|cat| cat.mood = "happy"}
 end
 
def sell_pets
  self.dogs.each do |dog|
     dog.mood = "nervous"
     dog.owner = nil
   end
   self.cats.each do |cat|
     cat.mood = "nervous"
     cat.owner = nil
   end
   @cats.clear
   @dogs.clear
end

def list_pets
  num_dogs = dogs.count
  num_cats = cats.count
  return "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."

end


end