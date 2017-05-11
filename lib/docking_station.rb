require_relative 'bike'


class DockingStation

  attr_reader :bike

  def release_a_bike
    raise "No more bikes!" unless @bike
    @bike
  end

  def dock_a_bike(bike)
    @bike = bike
  end
end
