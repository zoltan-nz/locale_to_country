require 'locale_to_country'
require 'csv'
require 'pry'
require 'yaml'

File.foreach('timezones.txt') do |tz|
  result_hash = {}
  tz = tz.strip
  converted = LocaleToCountry::Timezone.new(tz)
  result_hash[tz] = {
      country:   converted.country,
      city:      converted.city,
      longitude: converted.lng,
      latitude:  converted.lat
  }
  puts result_hash
  File.open("zone_and_country.yml", "a+") do |yml|
    yml.write(result_hash.to_yaml)
  end
end

