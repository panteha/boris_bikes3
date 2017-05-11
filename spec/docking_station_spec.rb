require "docking_station"

describe DockingStation  do
  it { is_expected.to respond_to :release_a_bike }
  it { is_expected.to respond_to(:dock_a_bike).with(1).argument }

  it 'Releases working bikes' do
    bike = subject.release_a_bike
    expect(bike).to be_bike_is_working
  end

  it "Allows bikes to be docked" do
    bike = Bike.new
    expect(subject.dock_a_bike(bike)).to eq bike
  end

  it "shows if a bike has been docked" do
    expect(DockingStation.new ).to respond_to :bike
  end

  it "will raise an error when more than one bike is released" do
    bike = Bike.new
    expect {bike = Bike.new}.to raise_error("No more bikes!")
  end
end
