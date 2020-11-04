class Mechanic

  attr_reader :name, :specialty
  
  @@all = []

    def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
    end

  def self.all
    @@all
  end

  def cars
  #gets a list of all cars mechanic services
    Car.all.select {|cars| cars.classification == self.specialty}
  end

  def car_owners
  #get a list of all car owners that go to a specific mechanic
    Car.all.select {|cars| cars.classification == self.specialty}.map {|cars| cars.owner}
  end
  def car_owners_name
  #list of names of all car owners who go to specific mechanic
    car_owners.map {|owners| owners.name}.uniq
  end




end
