require("minitest/autorun")
require("minitest/rg")

require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup()
    fish1 = Fish.new("tim trout")
    fish2 = Fish.new("dave the bass")
    @river = River.new("Clyde", [fish1, fish2] )
  end

  def test_get_name()
    assert_equal("Clyde", @river.name)
  end

  def test_fish_amount()
    assert_equal(2, @river.collection_of_fish.count)
  end
end
