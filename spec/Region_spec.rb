require "Region"

class Game
  attr_reader :countries
  def initialize
    @countries = [:germany, :russia, :austria, :turkey, :england, :france, :italy]
  end
end

RSpec::Expectations.configuration.on_potential_false_positives = :nothing
describe Region  do
  describe "new" do
    id = :pol
    name = "Poland"
    type = :land
    neighbours = [:ger, :rus, :cze, :slo, :lit, :bel, :ukr]
    belongs = nil
    supply = true
    field_id = 11
    army = true
    game = Game.new()
    context "Called move_army_in" do
      it "should raise " do
        wrong_items = ["pols", 1, nil, true, :adse, :ad, [], {}, "pol"]
        wrong_items.each do |wrong_item|
          expect{Region.new(wrong_item, name, type, neighbours, supply, belongs, field_id, game, army)}.to raise_error(ArgumentError)
        end
      end
    end
  end
end
# describe Player do
#   describe "new" do
#     possible_countries = :germany, :england, :russia, :austria, :italy, :turkey, :france
#     player_names = "Jan", "Maciej", "Mikołaj", "Michał", "Kuba", "Bartek", "Michał"
#     end
# end
