require_relative "seasonal_period"
class Hotel
  def initialize(name, rate, tax, seasonal_periods = nil)
    @name = name
    @rate = rate.to_i
    @tax = tax.to_i
    @seasonal_periods = seasonal_periods
  end

  def estimate_bill (checkin_date, checkout_date)
    bill = 0
    if checkout_date < checkin_date
      checkout_date = checkout_date.next_year
    end
    season_bill, season_days = seasonal_bill_and_days(checkin_date, checkout_date)
    regular_bill, regular_days = regular_bill_and_days(checkin_date, checkout_date, season_days)
    bill = regular_bill + season_bill
    total_days = regular_days + season_days
    taxes = bill * @tax / 100.0
    total_bill = bill + taxes
    output_string = "\n" + @name + "\nRegular Days Bill: ".ljust(40) + "#{ "(x " + regular_days.to_s + " days)" }".rjust(15) + regular_bill.to_s.rjust(10)
    output_string += "\nSeason Days Bill: ".ljust(40) + "#{ "(x " + season_days.to_s + " days)" }".rjust(15) + season_bill.to_s.rjust(10)
    output_string += "\nTotal Bill: ".ljust(40) + "#{ "(x " + total_days.to_s + " days)" }".rjust(15) + bill.to_s.rjust(10)
    output_string += "\nTotal Taxes: ".ljust(40) + taxes.round.to_s.rjust(25)
    output_string += "\nTotal Bill (After Tax): ".ljust(40) + total_bill.round.to_s.rjust(25)
    output_string
  end
  
  def get_season_days(start_date, end_date, checkin_date, checkout_date)
    season_days = 0
    season_range = start_date..end_date
    if !season_range.cover?(checkin_date) || !season_range.cover?(checkout_date)
      season_days += (end_date - checkin_date).to_i if season_range.cover?(checkin_date)
      season_days += (checkout_date - start_date).to_i if season_range.cover?(checkout_date)
    else
      season_days += (checkout_date - checkin_date).to_i
    end
    season_days
  end

  def regular_bill_and_days(checkin_date, checkout_date, season_days)
    bill = 0
    total_days = (checkout_date - checkin_date).to_i
    regular_days = total_days - season_days
    bill += regular_days * @rate
    return bill, regular_days
  end

  def seasonal_bill_and_days(checkin_date, checkout_date)
    bill = 0
    total_season_days = 0
    if @seasonal_periods
      @seasonal_periods.each do |season|
        season_days = get_season_days(season.start_date, season.end_date, checkin_date, checkout_date)
        total_season_days += season_days
        bill += season_days * season.rate
      end
    end
    return bill, total_season_days
  end
end