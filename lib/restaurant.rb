

class Restaurant

    attr_reader :opening_time, :name, :dishes

    def initialize(opening_time, name)
      @opening_time = opening_time
      @name = name
      @dishes = []
    end

    def closing_time(time)
      (@opening_time[0..1].to_i + time).to_s + ":00"
    end

    def add_dish(dish)
      @dishes << dish
    end

    def open_for_lunch?
      @opening_time.to_i < 12
    end

    def menu_dish_names
      @dishes.map do |menu_dish|
        menu_dish.upcase
      end
    end
  end
