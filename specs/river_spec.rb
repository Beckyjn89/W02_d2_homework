require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class TestRiver < Minitest::Test

  def setup
    @river = River.new("Severn", [@fish_01, @fish_02, @fish_03])

    @fish_01 = Fish.new("Sammy")
    @fish_02 = Fish.new("Sarah")
    @fish_03 = Fish.new("Stephanie")
  end

  def test_does_river_exist
    assert_equal("Severn" , @river.name)
  end

  def test_does_river_contain_fish
    assert_equal( 3, @river.fish.length)
  end



end
