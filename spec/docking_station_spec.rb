require "docking_station"

describe DockingStation  do
  it { is_expected.to respond_to :release_a_bike }

  it 'Releases working bikes' do
    bike = subject. release_a_bike
    expect(bike).to be_bike_is_working
  end
end
