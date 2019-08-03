require_relative 'bike' # adding another class

class DockingStation
attr_reader :bike, :capacity #shouldn't it be bikes since the code has been refactored?
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end
  # def bike this was the attribute reader the same as attr_reader
  #   @bike
  # end

  private
attr_reader :bikes

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end
end
