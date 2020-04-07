class Dog
    attr_reader :name
    attr_accessor :mood, :owner
    @@all = []
    def initialize(name, owner, mood = "nervous")
      @mood = mood
      @owner = owner
      @name = name
      owner.dogs << self
      @@all << self
    end

    def self.all
        @@all
    end
  end 	