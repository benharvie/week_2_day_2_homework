require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bear.rb'
require_relative '../river.rb'
require_relative '../fish.rb'

class BearTest < MiniTest::Test
  def setup
    @fish = ["Fishy", "George", "Coddy"]
    @river = River.new("Amazon", @fish)
    @bear = Bear.new("Yogi", @river)
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_take_from_river
    assert_equal(["Fishy", "George"], @bear.take_fish)
  end

  def test_bear_has_fish_in_stomach
    @bear.take_fish
    assert_equal(["Coddy"], @bear.stomach)
  end

  def test_bear_roars
    assert_equal("Roar!", @bear.roar)
  end

  def test_stomach_count
    @bear.take_fish
    @bear.take_fish
    assert_equal(2, @bear.food_count)
  end
end
