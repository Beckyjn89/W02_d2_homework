require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class TestFish < Minitest::Test

  def setup
    @fish = Fish.new("Sammy")
  end

  def test_does_fish_exist
    assert_equal("Sammy", @fish.name)
  end


end
