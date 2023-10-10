class Clock
  attr_accessor :hour, :min

  def initialize(hour, min)
    @hour = hour
    @min = min
  end

  def self.at(hour, min=0)
    new_clock = Clock.new(hour, min)
  end

  def to_s
    time = ''
    if @hour < 10
      time << "0#{@hour}:"
    else
      time << "#{@hour}:"
    end

    if @min < 10
      time << "0#{@min}"
    else
      time << "#{@min}"
    end

    time
  end

  def +(add_min)
    loop do
      break if add_min < 1440
      add_min -= 1440
    end
    new_clock = Clock.new(@hour, @min + add_min)
    calculate_correct_time(new_clock)
  end

  def -(sub_min)
    loop do
      break if sub_min < 1440
      sub_min -= 1440
    end
    new_clock = Clock.new(@hour, @min - sub_min)
    calculate_correct_time(new_clock)
  end

  def ==(other)
    @hour == other.hour && @min == other.min
  end

  private
  
  def calculate_correct_time(clock_obj)
    loop do
      if clock_obj.min < 0
        clock_obj.min += 60
        clock_obj.hour -= 1
      elsif clock_obj.min >= 60
        clock_obj.min -= 60
        clock_obj.hour += 1
      end
      break if clock_obj.min < 60 && clock_obj.min >= 0
    end

    loop do
      if clock_obj.hour < 0
        clock_obj.hour += 24
      elsif clock_obj.hour >= 24
        clock_obj.hour -= 24
      end
      break if clock_obj.hour < 24 && clock_obj.hour >= 0
    end

    clock_obj
  end

end

#p Clock.at(8).to_s
clock = Clock.at(10) - 90

puts clock