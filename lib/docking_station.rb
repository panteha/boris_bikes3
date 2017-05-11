require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

def initialize( capacity = DEFAULT_CAPACITY )
  @bikes = []
  @capacity = capacity
end


  attr_reader :bikes, :capacity


  def release_a_bike

    fail "No more bikes!" if empty?
    fail "No working bike available" if @bikes.all? {|bike| !bike.is_working?}
    if @bikes.last.is_working
      @bikes.pop
    else
      @bikes.rotate!
      release_a_bike
    end
  end

  def dock_a_bike(bike)
    raise "No more space!" if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
     @bikes.empty?
  end
end
