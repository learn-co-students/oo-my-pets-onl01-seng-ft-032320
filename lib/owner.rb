class Owner
attr_accessor :cats, :dogs, :pets
attr_reader :name, :species 

@@all = []
@@count = 0
@@cats = []
@@dogs = []
def initialize(name)
  @name = name
  @species = "human"
  @@all << self
  @@count += 1
  @pets = {:cats => [], :dogs => []}
end

def say_species
  return "I am a #{@species}."
end

def self.all
  @@all
end

def self.count
  @@count
end

def self.reset_all
  @@count = 0
end

def cats                                    #calls on the list of cats that the owner ownes
  Cat.all.select {|cat| cat.owner == self}
end

def dogs
  Dog.all.select {|dog| dog.owner == self}
end

 def buy_cat(name)
   name = Cat.new(name, self)
 end
 
 def buy_dog(name)
   name = Dog.new(name, self)
 end

 def walk_dogs
   Dog.all.each {|dog| dog.mood = "happy" if dog.owner == self}
 end
 
 def feed_cats
   Cat.all.each {|cat| cat.mood = "happy" if cat.owner == self}
 end
 
def sell_pets
  Dog.all.each {|dog| dog.mood = "nervous" if dog.owner == self}
  Cat.all.each {|cat| cat.mood = "nervous" if cat.owner == self}
  Dog.all.each {|dog| dog.owner = nil if dog.owner == self}
  Cat.all.each {|cat| cat.owner = nil if cat.owner == self}
end

def list_pets
  num_dogs = dogs.count
  num_cats = cats.count
  return "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."

end


end