require_relative 'bike'

class DockingStation
  
  DEFAULT_CAPACITY = 20
  attr_reader :capacity, :bikes

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    fail 'Bike is broken' if @bikes[-1].broken?
    bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    bikes << bike
  end

  private
  
  attr_reader
  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end

end
