require "pry"
class Owner
        attr_accessor :pets
	  attr_reader :species, :name
  
    @@all = []
  
    def initialize(name,species="human")
      @species = species
      @name = name
      @@all << self
      @pets = { :dogs => [], :cats => [] }
    end

    def self.all
        @@all
      end
    
      def self.reset_all
        @@all.clear
      end

      def say_species
        "I am a #{species}."
      end

      def self.count 
        @@all.size
      end

      def cats  
        @pets[:cats]
      end
      
      def dogs
        @pets[:dogs]
      end 

      def buy_dog(name)
        dog = Dog.new(name, self)
      end

      def buy_cat(name)
        cat = Cat.new(name, self)  
      end
    
      def walk_dogs
        @pets.collect do |species, instances|
            if species == :dogs
              instances.each do |dog|
                dog.mood = "happy"
              end
            end
          end
      end 

      def feed_cats
        @pets.collect do |species, instances|
          if species == :cats
            instances.each do |cat|
              cat.mood = "happy"
            end
          end
        end
      end

      def sell_pets
        pets.each do |k, pet_type|
          pet_type.each do |pet| 
            pet.mood = "nervous"
            pet.owner = nil
          end
        end
        @pets = { :dogs => [], :cats => [] }
      end

      def list_pets
        num_dogs = @pets[:dogs].size
        num_cats = @pets[:cats].size
        return "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."
      end
end