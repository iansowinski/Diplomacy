require './Config.rb'

class Region
  
  attr_reader :id, :name, :type, :neighbours, :supply_center
  attr_accessor :owner, :army
  
  def initialize (id, name, type, supply_center, neighbours, army, owner)
    @id = id
    @name = name
    @type = type
    @owner = owner
    @supply_center = supply_center
    @army = army
    @neighbours = neighbours
  end

  def move_army_out(to_neigbour)
    if neighbours.inclide?(to_neigbour.id) 
      to_neigbour.move_army_in(self)
      change_owner(to_neigbour.owner)
      @army = nil
  end

  def move_army_in(from_neigbour)
    change_owner(from_neigbour.owner)
    @army = from_neigbour.army
  end

  def spawn_army(army)
    @army = army
  end

  private
    def change_owner(new_owner)
      @owner = new_owner
    end
  end
end

class Map

  attr_reader :regions

  def initialize(regions_hash)
    @regions = {}
    regions_hash.each_with_index do |(key, value), index|
      @regions[key] = Region.new(key, value[:name], value[:type], value[:supply_center], value[:neighbours], value[:army], value[:owner])
    end
  end
end

map = Map.new($regions_hash)