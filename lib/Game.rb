class Game
  attr_reader :id, :type, :map, :player_ids, :countries 

  MAPS = ["europe"]
  GAME_TYPES = ["standard"]

  def initialize(id, game_type, map_name, map_nodes, map_edges, countries, player_ids)
      @id = id
      @game_type = game_type
      @map_name = map_name
      @map_nodes = map_nodes
      @map_edges = map_edges
      @countries = countries
      @player_ids = player_ids
    end
  end
end