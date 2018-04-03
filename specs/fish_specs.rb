require("minitest/autorun")
require("minitest/rg")

require_relative("../fish.rb")

class FishTest < MiniTest::Test
  def setup
    @fish = Fish.new("sam the salmon")
  end



  def test_get_name()
    assert_equal("sam the salmon", @fish.name)
    end


end
