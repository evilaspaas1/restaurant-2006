class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes


  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def closing_time(hours)
    (@opening_time.to_i + hours).to_s + ":00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    @opening_time.to_i <= 11
  end

  def menu_dish_names
    proud_dishes = []
    @dishes.each do |dish|
      proud_dishes << dish.upcase
    end
    proud_dishes
  end

  def announce_closing_time(hours)
      time = closing_time(hours) + "AM"
    if closing_time(hours).to_i >= 12
      time = (closing_time(hours).to_i - 12).to_s + ":00PM"
    end
    "#{@name} will be closing at #{time}"
  end
end
