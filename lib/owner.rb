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
    Cats.all.each do |cat|
      my_cat << cat 
  end 
  
end
