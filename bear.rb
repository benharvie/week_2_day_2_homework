class Bear
  attr_reader :name, :stomach
  def initialize(name, river)
    @name = name
    @river = river
    @stomach = []
  end

  def take_fish
    @stomach.push(@river.fish.pop)
    return @river.fish
  end

  def roar
    return "Roar!"
  end

  def food_count
    return @stomach.count
  end
end
