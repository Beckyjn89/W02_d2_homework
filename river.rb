class River

  attr_reader :name
  attr_accessor :fish

  def initialize(name, fish = [])
    @name = name
    @fish = fish
  end

  def fish_taken
    return @fish.pop
  end

end
