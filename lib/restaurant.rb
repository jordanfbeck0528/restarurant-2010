

class Restaurant

    attr_reader :opening_time, :name
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []

  end

  def dishes
    @dishes
  end

  # def closing_time(time)
  #   @opening_time += time.to_s
  # end

  def add_dish(dish)
    @dishes << dish
  end
end
