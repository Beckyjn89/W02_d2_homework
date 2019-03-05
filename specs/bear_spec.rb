require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class TestBear < MiniTest::Test

  def setup
    @fish_01 = Fish.new("Sammy")
    @fish_02 = Fish.new("Sarah")
    @fish_03 = Fish.new("Stephanie")

    @bear = Bear.new("Bert", "Grizzly", )
    @river = River.new("Severn", [@fish_01, @fish_02, @fish_03])


  end

  def test_does_bear_have_name
    assert_equal("Bert", @bear.name)
  end

  def test_does_bear_have_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_stomach_contents
    assert_equal(0, @bear.stomach.length)
  end





  def test_last_fish_taken_from_river
    assert_equal(@fish_03, @river.fish_taken)

  end

  def test_bear_has_eaten_fish
    assert_equal(3, @river.fish.length)
    fish_eaten = @bear.go_fishing(@river)

    assert_equal(2, @river.fish.length)
    assert_equal(1, @bear.stomach.length)

  end
  
end
