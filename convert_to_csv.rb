require 'locale_to_country'
require 'csv'
require 'pry'

CSV.open("zone_and_country.csv", "wb") do |csv|
  csv << ['ZONE', 'COUNTRY']

  File.foreach('timezones.txt') do |tz|
    row = []
    tz = tz.strip
    row[0] = tz
    row[1] = LocaleToCountry::Convert.from_locale(tz)
    csv << row
  end
end