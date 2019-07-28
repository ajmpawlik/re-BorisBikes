require_relative 'bike' # adding another class

class DockingStation
attr_reader :bike
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if @bikes.count >= 20
    @bikes << bike
  end
  # def bike this was the attribute reader the same as attr_reader
  #   @bike
  # end
end
