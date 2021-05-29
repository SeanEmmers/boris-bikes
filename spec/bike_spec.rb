require 'bike'

#Does the Bike class respond the 'working?' method
describe Bike do
  it { is_expected.to respond_to(:working?)}

  it 'can be reported broken' do
    subject.report_broken
    expect(subject).to be_broken
  end
end