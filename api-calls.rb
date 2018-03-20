require 'httparty'
require 'awesome_print'


toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')

toronto_wards_json = JSON.parse(toronto_wards_response.body)


wards = toronto_wards_json["objects"]

@name = []

wards.each do |name|
  ward["name"] >> @name
end

puts @name
