require "time"
class FormattedTime
  attr_reader :time

  def initialize(time)
    @time = time
  end

  def valid?
    time_format = /^([0-1]?\d|2[0-3]):(?<count60>[0-5]?\d):(\g<count60>)$/
    @time =~ time_format
  end

  def self.time_from_seconds(time_in_seconds)
    minutes, seconds = time_in_seconds.divmod(60)
    hours, minutes = minutes.divmod(60)
    extra_day, hours = hours.divmod(24)
    [extra_day, hours, minutes, seconds]
  end

  def add(time_to_add)
    if valid? && time_to_add.valid?
      time0 = Time.parse("00:00:00")
      time1 = Time.parse(time) - time0
      time2 = Time.parse(time_to_add.time) - time0
      sum_in_seconds = (time1 + time2).to_i
      sum_time = FormattedTime.time_from_seconds(sum_in_seconds)
    else
      "Please enter time in appropriate 24-hour format(h:m:s), eg.:13:45:56"
    end
  end

end