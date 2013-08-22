class String

  def valid_time?
    time_format = /^([0-1]?\d|2[0-3]):(?<count60>[0-5]?\d):(\g<count60>)$/
    true if self =~ time_format
  end

  def split_time
    split(":")
  end

  def get_adjusted_time_and_extra(time1, time2, extra = 0, adjuster = 60)
    total = Integer(time1) + Integer(time2) + extra
    return (total % adjuster).to_s.rjust(2, '0'), total / adjuster
  end

  def add_and_adjust_time(time1, time2)
    total_time = []
    total_time[2], extra_minute = get_adjusted_time_and_extra(time1[2], time2[2])
    total_time[1], extra_hour = get_adjusted_time_and_extra(time1[1], time2[1], extra_minute)
    total_time[0], extra_day = get_adjusted_time_and_extra(time1[0], time2[0], extra_hour, 24)
    return total_time, extra_day
  end

  def sum_time(time_to_add)
    if valid_time? && time_to_add.valid_time?
      time1 = split_time
      time2 = time_to_add.split_time
      adjusted_time, extra_day = add_and_adjust_time(time1, time2)
      "Total time : " + (extra_day == 1 ? "1 day & " : "") + adjusted_time.join(":")
    else
      "Please enter time in appropriate 24-hour format(h:m:s), eg.:13:45:56"
    end
  end

end