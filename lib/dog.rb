require "pry"
class Dog
  
  attr_accessor :owner, :mood #creates getter and setter methods 
  attr_reader :name
  
  @@all = []
    
   def initialize(name, owner)   #Dog and a Cat are initialized with a name and an Owner object.
   #(cat.owner.name) seems that cat is the instance of the cat class. owner is a getter method. It looks like association already took place. 
    @@all << self 
   
    @name = name 
    @owner = owner # sets the cat object setter method(owner) to equal the new owner that was just created 
    @mood = "nervous"
    
   end 
  
   def self.all
    @@all 
   end 
   
end