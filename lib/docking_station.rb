require_relative 'bike' # adding another class

class DockingStation
attr_reader :bike
  def release_bike
    fail 'No bikes available' unless @bike
    # fail 'Docking station full' unless nil 
    @bike
  end
  def dock(bike)
    @bike = bike
  end
  # def bike this was the attribute reader the same as attr_reader
  #   @bike
  # end
end
