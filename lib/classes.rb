# todo: add supply centers, resolve problems with Spain xD
class Region
  
  attr_reader :id, :name, :type, :neighbours, :field_id
  attr_accessor :army_type, :belongs_to
  
  def initialize (id, name, type, neighbours, army_type, belongs_to, field_id)
    if id.class  == Symbol and id.length == 3
      @id = id.to_sym
    else
      raise(ArgumentError)
    end
    if name.class == String and name.length > 0
      @name = name
    else
      raise(ArgumentError)
    end
    if type == :land or type == :water or type == :shore
      @type = type
    else
      raise(ArgumentError)
    end
    if neighbours.class == Array and neighbours.size > 0
      neighbours.each do |neighbour|
        if neighbour.class != Symbol or neighbour.size != 3
          raise (ArgumentError) 
        end
      end
      @neighbours = neighbours
    else
      raise(ArgumentError)
    end
    if army_type == :army or army_type == :fleet or army_type == nil
      @army_type = army_type
    else
      raise(ArgumentError)
    end
    if [:germany, :russia, :austria, :turkey, :england, :france, :italy, nil].include?(belongs_to) == true
      @belongs_to = belongs_to
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

