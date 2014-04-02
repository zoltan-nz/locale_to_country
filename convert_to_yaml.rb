require 'locale_to_country'
require 'csv'
require 'pry'
require 'yaml'

File.open("zone_and_country.yml", "wb") do |yml|
  yml.write(LocaleToCountry::Convert.timezone_country_hash.to_yaml)
end
