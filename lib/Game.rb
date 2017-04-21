class Game

  attr_reader :id, :type, :map, :player_ids, :countries
  # attr_accessor 

  MAPS = ["europe"]
  GAME_TYPES = ["standard"]

  def initialize(id, game_type, map_name, map_nodes, map_edges, countries, player_ids)
    if id.class == Symbol and id.length == 3
      @id = id
    else
      raise(ArgumentError)
    end
    if GAME_TYPES.include?(game_type)
      @game_type = game_type
    else
      raise(ArgumentError)
    end
    if MAPS.include?(map_name)
      @map_name = map_name
    else
      raise(ArgumentError)
    end
    if map_nodes.class == Array and map_nodes.length > 0 and map_nodes.all? {|n| n.is_a? Symbol}
      @map_nodes = map_nodes
    else
      raise(ArgumentError)
    end
    if map_edges.class == Array and map_edges.length > 0 and map_edges.all? {|e| e.is_a? Array} and map_edges.all? {|e| e.length == 2}
      @map_edges = map_edges
    else
      raise(ArgumentError)
    end
    if countries.class == Array and countries.length > 0 and countries.all? {|c| c.is_a? Symbol}
      @countries = countries
    else
      raise(ArgumentError)
    end
    if player_ids.class == Array and player_ids.length > 1 and player_ids.all? {|p| p.is_a? Symbol}
      @player_ids = player_ids
    else
      raise(ArgumentError)
    end
  end
end