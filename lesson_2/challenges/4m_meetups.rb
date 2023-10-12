require 'Date'

DAYS_OF_THE_WEEK = %w(sunday monday tuesday wednesday thursday friday saturday)
WEEK_OF_THE_MONTH = %w(first second third fourth fifth last teenth)

class Meetup
  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(meetup_dotw, meetup_wotm)
    current_day = Date.civil(@year, @month).wday
    meetup_dotw_num = DAYS_OF_THE_WEEK.index(meetup_dotw.downcase)
    meetup_wotm_num = WEEK_OF_THE_MONTH.index(meetup_wotm.downcase)
    result_date = 1

    loop do
      break if meetup_dotw_num == current_day
      current_day += 1
      current_day %= 7
      result_date += 1
    end

    if meetup_wotm_num < 5
      result_date += (7 * meetup_wotm_num)
    elsif meetup_wotm_num < 6
      current_day = Date.civil(@year, @month, -1).wday
      
      if meetup_dotw_num < current_day
        result_date = Date.civil(@year, @month, -1).day - (current_day - meetup_dotw_num)
      elsif
        meetup_dotw_num > current_day
        result_date = Date.civil(@year, @month, -1).day - current_day - (7 - meetup_dotw_num)
      else
        result_date = Date.civil(@year, @month, -1).day
      end
    else
      current_day = Date.civil(@year, @month).wday
      result_date = 1

      loop do
        break if meetup_dotw_num == current_day && result_date >= 13
        current_day += 1
        current_day %= 7
        result_date += 1
      end
    end

    return nil if result_date > 31

    Date.civil(@year, @month, result_date)
  end
end
