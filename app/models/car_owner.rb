class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
  #get a list of all cars
    Car.all.select {|cars| cars.owner == self}
  end

  def helper_classifications
    cars.map { |cars| cars.classification }.uniq
  end

  def mechanics
    #get a list of all the mechanicis that a specifis owner goes to
    arr = []
    helper_classifications.each do |classification|
      arr << Mechanic.all.select do |mechanic| mechanic.specialty == classification
      end
    end
    arr.flatten  #.map {|x| x.name} for only names
    #binding.pry
  end



  def self.average_number_of_cars
  #get averege amount of cars owned for all owners
    cars = self.all.map { |owners| owners.cars }
    cars.flatten.length.to_f / self.all.count.to_f
    #binding.pry
  end


end
