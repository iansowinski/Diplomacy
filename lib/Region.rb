class Region
  
  attr_reader :id, :name, :type, :neighbours, :supply_center, :field_id
  attr_accessor :belongs_to, :army
  
  def initialize (id, name, type, neighbours, supply_center, belongs_to, field_id, game, army)
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
      raise(ArgumentError, "expected :land, :water or :shore, got #{type}")
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
    elsif neighbours.class != Array
      raise(ArgumentError, "expected Array, got neighbours.class")
    else
      raise(ArgumentError, "expected non-empty Array, got array of length #{neighbours.length}")
    end
    if game.class == Game
      @game = game
    else
      raise(ArgumentError, "expected Game, got #{game.class}")
    end
    if (game.countries + [nil]).include?(belongs_to) == true 
      @belongs_to = belongs_to
    else
      raise(ArgumentError, "expected proper countries Symbol variable or nil, got #{belongs_to}")
    end
    if [TrueClass, FalseClass].include?(supply_center.class) == true
      @supply_center = supply_center
    else
      raise(ArgumentError, "expected TrueClass or FalseClass, got #{supply_center.class}")
    end
    if [TrueClass, FalseClass].include?(army.class) == true
      @army = army
    else
      raise(ArgumentError, "expected TrueClass or FalseClass, got #{army.class}")
    end
    if field_id.class == Fixnum and field_id >= 0
      @field_id = field_id
    elsif field_id.class != Fixnum
      raise(ArgumentError, "expected Fixnum, got #{field_id.class}")
    else
      raise(ArgumentError, "expected value greater than 0, got #{field_id}")
    end
  end

end

