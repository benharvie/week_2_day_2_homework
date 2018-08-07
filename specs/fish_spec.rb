require 'minitest/autorun'
require 'minitest/rg'
require_relative '../fish.rb'

class FishTest < MiniTest::Test
  def setup
    @fish = Fish.new(["Fishy", "George", "Coddy"])
  end

  def test_fish_has_name
    assert_equal("Fishy", @fish.name[0])
  end
end
