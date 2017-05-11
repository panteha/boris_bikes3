require_relative 'bike'


class DockingStation

  attr_reader :bike
  def release_a_bike
    Bike.new
  end

  def dock_a_bike(bike)
    bike
  end
end
