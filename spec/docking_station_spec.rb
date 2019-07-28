require 'docking_station'

describe DockingStation do
  describe'#release_bike' do
    it 'responds to release_bike method' do
      expect(subject).to respond_to :release_bike
    end
    it 'releases a bike'do
      bike = subject.release_bike
      expect(bike).to be_working #the same as below, just different syntax
      expect(bike.working?).to be true
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
