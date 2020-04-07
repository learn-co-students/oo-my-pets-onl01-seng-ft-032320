class Cat
    attr_reader :name
    attr_accessor :mood, :owner
    @@all = []
    def initialize(name, owner, mood = "nervous")
      @mood = mood
      @name = name
      @owner = owner
      owner.cats << self
      @@all << self
    end

    def self.all
        @@all
    end
  end