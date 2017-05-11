require "docking_station"

describe DockingStation  do
  it { is_expected.to respond_to :release_a_bike }
  it { is_expected.to respond_to(:dock_a_bike).with(1).argument }

  it 'Checks bike is working' do
    bike = Bike.new
    expect(bike).to be_bike_is_working
  end

  it "Releases a bike" do
    bike = Bike.new
    subject.dock_a_bike(bike)
    expect(subject.release_a_bike).to eq bike
  end

  it "Allows bikes to be docked" do
    bike = Bike.new
    expect(subject.dock_a_bike(bike)).to eq bike
  end

  it "shows if a bike has been docked" do
    expect(DockingStation.new ).to respond_to :bike
  end

  describe '#release_a_bike' do
  it "will raise an error when there are no bikes available" do
    expect {subject.release_a_bike}.to raise_error("No more bikes!")
  end
end

end
