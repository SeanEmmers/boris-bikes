require 'docking_station'

# Does DockingStation respond to release_bike
describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}
# Does DockingStation respond to the dock method
  it { is_expected.to respond_to(:dock).with(1).argument }
# Does DockingStation respond to the bike method
  it { is_expected.to respond_to(:bikes)}
# Does the method dock(bike) return an instance of the Bike class?
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end
# Does the method .bike return bike on the dock(bike) method?
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end
# Does the .release_bike method return bike
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  
  # Raise an error if there are no bikes available
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'doesnt release broken bikes to users' do
      bike = Bike.new
      bike.report_broken
      subject.dock(bike)
      expect{ subject.release_bike}.to raise_error 'Bike is broken'
    end
  end

# Dock method will return an error when it already contains @bike
  describe '#dock' do
    it 'raises an error when full' do
      subject.capacity.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end
   
    it 'raises error when full' do
      DockingStation::DEFAULT_CAPACITY.times do
      subject.dock Bike.new
      end
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end

    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end

  describe 'initialization' do
    it 'has a variable capacity' do
      docking_station = DockingStation.new(50)
      50.times { docking_station.dock Bike.new}
      expect { docking_station.dock Bike.new}.to raise_error 'Docking station full'
    end
end
