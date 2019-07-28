require 'docking_station'

describe DockingStation do
  describe'#release_bike' do
    it 'responds to release_bike method' do
      expect(subject).to respond_to :release_bike
    end
    it 'releases a bike'do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises an error when there are no bikes available' do
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'responds to dock method with one argument (bike)' do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it 'docks bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq ([bike])
    end

    it 'raises an error when there are all spaces (1) taken by bikes in the docking station' do
      20.times {subject.dock Bike.new}
      expect {subject.dock Bike.new}.to raise_error 'Docking station full'
    end
  end
  it 'responds to method bike' do
    expect(subject).to respond_to(:bike)
  end
end
