class Bear

attr_reader :name, :type, :stomach

  def initialize(name, type, stomach = [])
    @name = name
    @type = type
    @stomach = stomach
  end

  def go_fishing(river)
    fish_caught = river.fish_taken
    @stomach << fish_caught
  end


end
