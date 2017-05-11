require_relative 'bike'

class DockingStation

def initialize
  @bikes = []
end


  attr_reader :bikes


  def release_a_bike
    raise "No more bikes!" if empty?
    @bikes.pop
  end

  def dock_a_bike(bike)
    raise "No more space!" if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
     @bikes.empty?
  end
end
