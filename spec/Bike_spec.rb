require 'bike'

describe Bike do
  it { is_expected.to respond_to :is_working? }

  it {is_expected.to respond_to :report_broken}

  it "if a bike is reported as being broken, it is recorded as broken" do
    bike = Bike.new
    bike.report_broken
    expect(bike.is_working?).to eq false
  end



end
