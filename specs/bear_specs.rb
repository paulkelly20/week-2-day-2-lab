require("minitest/autorun")
require("minitest/rg")

require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class BearTest < MiniTest::Test
  def setup
    fish1 = Fish.new("tony the tuna")
    fish2 = Fish.new("sam the salmon")
    @river = River.new("Clyde", [fish1, fish2] )
    @bear = Bear.new("Yogi", [])
  end

  def test_get_name()
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_stomach()
    assert_equal(0, @bear.stomach.count)
  end

  def test_bear_eats()
    @bear.eat(@river)
    assert_equal(1, @bear.stomach.count)
  end

  def test_river_count_goes_down()
    @bear.eat(@river)
    assert_equal(1, @river.collection_of_fish.count)
  end

   def test_bear_roar
     assert_equal("Rooooar!", @bear.bear_roars)
   end
end
