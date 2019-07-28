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
  
    it 'responds to dock method with one argument (bike)' do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it 'responds to method bike' do
      expect(subject).to respond_to(:bike)
    end

    it 'docks bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq (bike)
    end
end
