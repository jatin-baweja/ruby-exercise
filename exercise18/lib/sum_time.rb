require_relative "string"
def get_adjusted_time_and_extra(time1, time2, extra = 0, adjuster = 60)
  total = Integer(time1) + Integer(time2) + extra
  return (total % adjuster).to_s.rjust(2, '0') , total / adjuster
end
def add_and_adjust_time(time1, time2)
  total_time = []
  total_time[2], extra_minute = get_adjusted_time_and_extra(time1[2], time2[2])
  total_time[1], extra_hour = get_adjusted_time_and_extra(time1[1], time2[1], extra_minute)
  total_time[0], extra_day = get_adjusted_time_and_extra(time1[0], time2[0], extra_hour, 24)
  return total_time.join(":"), extra_day
end
def sum_time(*time_to_add)
  extra_days = 0
  total_time = time_to_add.inject do |added_time, new_time|
    if added_time.valid_time? && new_time.valid_time?
      added_time, extra_day = add_and_adjust_time(added_time.split_time, new_time.split_time)
      extra_days += extra_day
      added_time
    else
      return "Please enter time in appropriate 24-hour format(h:m:s), eg.:13:45:56"
    end
  end
  "Total time : " + (extra_days >= 1 ? extra_days.to_s + " day & " : "") + total_time
end
