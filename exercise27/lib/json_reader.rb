require_relative "file"
require_relative "hotel"
require "json"
require "date"
def get_hash_from_json(file_name)
  json = File.read(File.get_full_path(file_name))
  json_hash = JSON.parse(json)
end

def read_hotel_data_from_json(file_name)
  hotels = get_hash_from_json(file_name)
  hotel_details = []
  hotels.each do |hotel_info|
    name = hotel_info["Hotel_name"]
    rate = hotel_info["rate"]
    tax = hotel_info["tax"]
    if hotel_info["seasonal_rates"]
      seasonal_details = []
      hotel_info["seasonal_rates"].each do |season|
        season.each do |key, value|
          season_name = key
          season_start = Date.strptime(value["start"], '%d-%m')
          season_end = Date.strptime(value["end"], '%d-%m')
          if season_end < season_start
            season_end = season_end.next_year
          end
          season_rate = value["rate"]
          seasonal_details.push(SeasonalPeriod.new(season_name, season_start, season_end, season_rate))
        end
      end
      hotel_details.push(Hotel.new(name, rate, tax, seasonal_details))
    else
      hotel_details.push(Hotel.new(name, rate, tax))
    end
  end
  hotel_details
end