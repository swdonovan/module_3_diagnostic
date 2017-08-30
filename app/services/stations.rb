class Stations
  attr_reader :station_name
  
  def initialize(station)
    @station_name = station[:station_name]
  end
end
