module Utils # classes with different natures need to share the method =>  mixin (module or an instance of a class)
  def self.get_day_range(date)
    # Assume the date will be given a string in "year-month-day" format
    # The period of time on the given date
    begin_time = Date.parse(date).to_datetime
    end_time = Date.parse(date).next.to_datetime
    return begin_time, end_time
  end
end

# mixin-include: for instance method
# mixin-extend: for class method
