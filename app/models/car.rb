class Car

  attr_reader :make, :model, :owner, :classification
  @@all = []

  def initialize(make, model, classification, owner)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classification
  #get a list of all car classifications
    self.all.map {|cars| cars.classification}
  end

  def self.find_mechanics(classification)
  #get a list of mechanics that have an expertise that maches the passed car classification
    Mechanic.all.select {|mechanics| mechanics.specialty == classification}
    #binding.pry
  end



end
