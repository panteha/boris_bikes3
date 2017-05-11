require_relative 'bike'

class DockingStation

def initialize
  @bikes = []
end


  #attr_reader :bike


  def release_a_bike
    raise "No more bikes!" if @bikes.empty?
    @bikes.pop
  end

  def dock_a_bike(bike)
    raise "No more space!" if @bikes.count >= 20
    @bikes << bike
  end
end
