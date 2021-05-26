require 'docking_station'

#Does DockingStation respond to release_bike
describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}
  it 'releases working bike' do
    bike = subject.release_bike 
    expect(bike).to be_working
  end
end
 
  



#describe 'DockingStation' do
  #it "responds to release_bike" do
  #expect(DockingStation).to respond_to(:release_bike)
  #end
#end

#Can I return a bike
#describe return_bike do
  #it { is_expected.to return @bike}
#end
