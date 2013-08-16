class String
  def valid_time?
    time_format = /^([0-1]?\d|2[0-3]):(?<count60>[0-5]?\d):(\g<count60>)$/
    true if self =~ time_format
  end
  def split_time
    split(":")
  end
end