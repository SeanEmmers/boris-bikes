require 'docking_station'

#Does DockingStation respond to release_bike
describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}

# Does DockingStation respond to the dock method
  it { is_expected.to respond_to(:dock).with(1).argument }

# Does DockingStation respond to the bike method
  it { is_expected.to respond_to(:bike)}

# Does the method dock(bike) return an instance of the Bike class?
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

# Does the method .bike return bike on the dock(bike) method?
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
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
end
end

# Does DockingStation release a bike that is then working
  #it 'releases working bike' do
    #bike = subject.release_bike 
    #expect(bike).to be_working
  #end
