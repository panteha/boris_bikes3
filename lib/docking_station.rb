require_relative 'bike'


class DockingStation

  attr_reader :bike

  def release_a_bike
    fail "No more bikes!" unless @bike
    
  end

  def dock_a_bike(bike)
    @bike = bike
  end
end
