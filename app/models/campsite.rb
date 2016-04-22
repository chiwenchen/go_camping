# == Schema Information
#
# Table name: campsites
#
#  id        :integer          not null, primary key
#  name      :string
#  address   :string
#  city_id   :integer
#  latitude  :float
#  longitude :float
#

class Campsite < ActiveRecord::Base
  belongs_to :city
  geocoded_by :address
  after_validation :geocode 
  # reverse_geocoded_by :latitude, :longitude
  # after_validation :reverse_geocode

  def weather
    zipcode = self.city.yahoo_zipcode
    weather = Weather.lookup(zipcode, Weather::Units::CELSIUS)
    return {
      title: weather.title, 
      temp: "#{weather.condition.temp.to_s} 度",
      condition: weather.condition.text
    }
  end

end
