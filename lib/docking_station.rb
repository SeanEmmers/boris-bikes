class DockingStation
  #attr_reader :

  def release_bike
    return Bike.new
  end

  #def return_bike(bike)
    #bike = Bike.new
    #@returned_bike = bike
  #end
end

class Bike
  def working?
    true
  end
end