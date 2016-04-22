# == Schema Information
#
# Table name: cities
#
#  id            :integer          not null, primary key
#  name          :string
#  yahoo_zipcode :integer
#

class City < ActiveRecord::Base
  has_one :campsite
end
