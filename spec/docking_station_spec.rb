require "docking_station"

describe DockingStation  do
  it { is_expected.to respond_to :release_a_bike }
  it { is_expected.to respond_to(:dock_a_bike).with(1).argument }

  let(:bike) { double :bike}
  it 'Checks bike is working' do
    allow(bike).to receive(:is_working?).and_return(true)
    expect(bike).to be_is_working
  end


  it "Releases a bike" do
    bike = double(:bike, is_working: true, is_working?: true)
    subject.dock_a_bike(bike)
    expect(subject.release_a_bike).to eq bike
  end

  it "Allows bikes to be docked" do
    expect(subject.dock_a_bike(bike)).to eq [bike]
  end

  it "shows if a bike has been docked" do
    expect((DockingStation.new).dock_a_bike(@bikes)).to eq [@bikes]
  end

  describe '#release_a_bike' do
  it "will raise an error when there are no bikes available" do
    expect {subject.release_a_bike}.to raise_error("No more bikes!")
  end
end

  describe '#docks_a_bike' do
    it "Will only allow one bike to be docked" do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock_a_bike(bike)}
      expect {subject.dock_a_bike(bike)}.to raise_error("No more space!")
    end
  end

  it "allow change in the capacity" do
    expect(DockingStation.new(10).capacity).to eq 10
  end

  it "Sets the capacity to default value" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it "Not to release broken bike" do
  bike = double(:bike, report_broken: true, is_working?: false)
  subject.dock_a_bike(bike)
  expect{subject.release_a_bike}.to raise_error "No working bike available"
end

  it "Station accepts a broken bike" do
    bike = double(:bike, report_broken: true)
    subject.dock_a_bike(bike)
    expect(subject.bikes.count).to eq 1
  end

  it "releases a bike as long as there is a working bike in the dock" do
    station = DockingStation.new
    working_bike = double(:bike)
    #working_bike = Bike.new
    station.dock_a_bike(working_bike)
    #broken_bike = Bike.new
    broken_bike = double(:bike)
    broken_bike.report_broken
    station.dock_a_bike(broken_bike)
    expect(station.release_a_bike).to eq working_bike

  end

end
