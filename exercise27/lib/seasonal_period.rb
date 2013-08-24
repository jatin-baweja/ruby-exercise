class SeasonalPeriod
  attr_reader :name, :start_date, :end_date, :rate
  def initialize(name, start_date, end_date, rate)
    @name = name
    @start_date = start_date
    @end_date = end_date
    @rate = rate.to_i
  end
end