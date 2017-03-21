class Country
  attr_reader :id, :name, :type, :neighbours, :army_type, :belongs_to

  def initialize (id, name, type, neighbours, army_type, belongs_to)
    @id = id.to_sym
    @name = name
    @type = type
    @neighbours = neighbours
    @army_type = army_type
    @belongs_to = belongs_to
  end
end