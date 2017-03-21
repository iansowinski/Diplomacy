require "classes.rb"

describe Country  do
  let :country do
    Country.new("pol", 
                "Poland", 
                "land", 
                ["ger", "rus", "cze", "slo", "lit", "bel", "ukr"], 
                "",
                "")
  end
end