require_relative 'bike' # adding another class

class DockingStation
attr_reader :bike
  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end
  def dock(bike)
    fail 'Docking station full' if @bike
    @bike = bike
  end
  # def bike this was the attribute reader the same as attr_reader
  #   @bike
  # end
end
