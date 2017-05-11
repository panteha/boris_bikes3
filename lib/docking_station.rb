require_relative 'bike'

class DockingStation

  attr_reader :bikes


  def release_a_bike
    raise "No more bikes!" unless @bikes
    @bikes
  end

  def dock_a_bike(bike)
    raise "No more space!" if @bikes
    @bikes = bike
  end
end
