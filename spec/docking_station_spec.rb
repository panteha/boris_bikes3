require "docking_station"

describe DockingStation  do
  it { is_expected.to respond_to :release_a_bike }
  it { is_expected.to respond_to(:dock_a_bike).with(1).argument }

  it 'Releases working bikes' do
    bike = subject.release_a_bike
    expect(bike).to be_bike_is_working
  end
end
