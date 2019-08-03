require './lib/docking_station'
require './lib/bike'

describe 'feature test' do
  it 'checks the steps within the feature' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    docking_station.release_bike
    20.times {docking_station.dock(bike)}
    expect {docking_station.dock(bike)}.to raise_error 'Docking station full'
  end
end
