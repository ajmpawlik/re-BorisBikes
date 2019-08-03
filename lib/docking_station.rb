require_relative 'bike' # adding another class

class DockingStation
attr_reader :bike #shouldn't it be bikes since the code has been refactored?
  def initialize
    @bikes = []
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

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= 20
  end
end
