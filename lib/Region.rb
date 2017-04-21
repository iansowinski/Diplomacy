class Region
  
  attr_reader :id, :name, :type, :neighbours, :supply_center, :field_id
  attr_accessor :belongs_to
  
  def initialize (id, name, type, neighbours, supply_center, belongs_to, field_id, game)
    if id.class == Symbol and id.length == 3
      @id = id
    elsif id.class != Symbol
      raise(ArgumentError, "expected Symbol, got #{id.class}")
    else
      raise(ArgumentError, "expected Symbol of length 3, got #{id.class} of length #{id.length}")
    end
    if name.class == String and name.length > 0
      @name = name
    elsif name.class != String
      raise(ArgumentError, "expected String, got #{name.class}")
    else 
      raise(ArgumentError, "expected non-empty String, got String of length #{name.length}")
    end
    if type == :land or type == :water or type == :shore
      @type = type
    else
      raise(ArgumentError, "type should be :land, :water or :shore")
    end
    if neighbours.class == Array and neighbours.size > 0
      neighbours.each do |neighbour|
        if neighbour.class != Symbol
          raise(ArgumentError, "expected Symbol, got #{id.class}")
        elsif  neighbour.size != 3
          raise(ArgumentError, "expected Symbol of length 3, got #{id.class} of length #{id.length}")
        end
      end
      @neighbours = neighbours
    else
      raise(ArgumentError)
    end
    if game.class == Game
      @game = game
    else
      raise(ArgumentError)
    end
    if (game.countries + [nil]).include?(belongs_to) == true 
      @belongs_to = belongs_to
    else
      raise(ArgumentError)
    end
    if [TrueClass, FalseClass].include?(supply_center.class) == true
      @supply_center = supply_center
    else
      raise(ArgumentError)
    end
    if field_id.class == Fixnum and field_id >= 0
      @field_id = field_id
    else
      raise(ArgumentError)
    end
  end

end

