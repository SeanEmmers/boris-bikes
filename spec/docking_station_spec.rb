require 'docking-station'

#Does DockingStation exist
describe DockingStation do
end

#One line syntax
describe 'DockingStation' do
  it { is_expected.to respond_to(:release_bike)}
end


#describe 'DockingStation' do
  #it "responds to release_bike" do
  #expect(DockingStation).to respond_to(:release_bike)
  #end
#end