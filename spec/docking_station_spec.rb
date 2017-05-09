require "docking_station"

describe DockingStation  do
  it { is_expected.to respond_to(DockingStation.release_a_bike) }
end
