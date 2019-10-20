class Owner
  
    @@all = []
  
  attr_reader :name, :species

  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self
  end
  
  def say_species 
    return "I am a human."
  end 

  def self.all 
    @@all
  end 
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end 
  
  def cats 
    my_cats = []
    Cat.all.each do |cat|
    my_cats << cat if cat.owner == self 
  end 
    my_cats 
  end 
  
  def dogs 
    my_dogs = []
    Dog.all.each do |dog|
      my_dogs << dog if dog.owner == self
    end 
    my_dogs
   end 
  
  
end
