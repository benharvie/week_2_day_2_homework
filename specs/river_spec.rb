require 'minitest/autorun'
require 'minitest/rg'
require_relative '../river.rb'
require_relative '../fish.rb'

class RiverTest < MiniTest::Test
  def setup
    @fish = Fish.new(["Fishy", "George", "Coddy"])
    @river = River.new("Amazon", @fish)
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_has_fish
    assert_equal(true, @river.fish_count > 0)
  end

  def test_river_fish_count
    assert_equal(3, @river.fish_count)
  end
end
