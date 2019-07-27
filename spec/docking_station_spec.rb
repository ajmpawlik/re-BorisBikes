require 'docking_station'

describe DockingStation do
  it 'responds to release_bike method' do
    expect(subject).to respond_to :release_bike
  end
  it 'releases a bike'do
    bike = subject.release_bike
    expect(bike).to be_working #the same as below, just different syntax
    expect(bike.working?).to be true
  end
  it 'responds to dock method' do
    expect(subject).to respond_to :dock
  end
  # it 'docks bike' do
  #   bike = subject.release_bike
  #
  # end
end
