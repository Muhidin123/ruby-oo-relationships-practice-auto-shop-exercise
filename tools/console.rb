require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
owner_1 = CarOwner.new("Owner1")
owner_2 = CarOwner.new("Owner2")
owner_3 = CarOwner.new("Owner3")
owner_4 = CarOwner.new("Owner4")
owner_5 = CarOwner.new("Owner5")

car_1 = Car.new("make1" , "model1","special1", owner_1)
car_2 = Car.new("make2" , "model2","special2", owner_2)
car_3 = Car.new("make3" , "model3","special3", owner_3)
car_4 = Car.new("make4" , "model4","special4", owner_4)
car_5 = Car.new("make5" , "model5","special5", owner_5)
#car_7 = Car.new("make12" , "model13","special1", owner_1)
#car_8 = Car.new("make1243" , "model124","special1", owner_1)
#car_9 = Car.new("make125" , "model124","special132", owner_1)
car_10 = Car.new("make1523" , "model124","special2", owner_1)



mechanic1 = Mechanic.new("Mechanic1", "special1")
mechanic2 = Mechanic.new("Mechanic2", "special2")
mechanic3 = Mechanic.new("Mechanic3", "special3")
mechanic4 = Mechanic.new("Mechanic4", "special4")
mechanic5 = Mechanic.new("Mechanic5", "special5")








binding.pry
