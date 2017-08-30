class Stations
  attr_reader :station_name,
              :distance,
              :address,
              :distance,
              :fuel_types,
              :access_times

  def initialize(station)
    @station_name = station['station_name']
    @distance     = station['distance']
    @address      = station['street_address']
    @distance     = station['distance']
    @fuel_types   = station['fuel_type_code']
    @access_times = station['access_days_time']
  end
end
