require 'bike'

#Does the Bike class respond the 'working?' method
describe Bike do
  it { is_expected.to respond_to(:working?)}
end