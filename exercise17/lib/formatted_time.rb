class FormattedTime
  
  def initialize(time)
    @time = time
  end

  def valid_time?
    time_format = /^([0-1]?\d|2[0-3]):(?<count60>[0-5]?\d):(\g<count60>)$/
    true if @time =~ time_format
  end

  def split_time
    @time.split(":")
  end

  def to_seconds
    time_array = split_time
    time_in_seconds = time_array[2].to_i + time_array[1].to_i * 60 + time_array[0].to_i * 60 * 60
    time_in_seconds
  end

  def self.format_time_from_seconds(time_in_seconds)
    minutes, seconds = time_in_seconds.divmod(60)
    hours, minutes = minutes.divmod(60)
    extra_day, hours = hours.divmod(24)
    formatted_time = (extra_day == 1 ? "1 day & " : "") + hours.to_s.rjust(2,'0') + ":" + minutes.to_s.rjust(2,'0') + ":" + seconds.to_s.rjust(2,'0')
    formatted_time
  end

  def add_time(time_to_add)
    if valid_time? && time_to_add.valid_time?
      formatted_time = FormattedTime.format_time_from_seconds(to_seconds + time_to_add.to_seconds)
      formatted_time
    else
      "Please enter time in appropriate 24-hour format(h:m:s), eg.:13:45:56"
    end
  end

end