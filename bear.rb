class Bear
  attr_reader :name, :stomach

  def initialize(name, stomach)
    @name = name
    @stomach = stomach
  end

  def eat(river)
    fish_to_eat = river.collection_of_fish.pop()
     @stomach << fish_to_eat
  end
end
