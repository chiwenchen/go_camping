# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

taipei = City.create(name: '台北', yahoo_zipcode: 2306179)
kao = City.create(name: '高雄', yahoo_zipcode: 2306180)
taichung = City.create(name: '台中', yahoo_zipcode: 2306181)
Campsite.create(name: '淡水露營場', address: '淡水區', city: taipei)
