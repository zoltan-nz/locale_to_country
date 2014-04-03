require 'geocoder'
Geocoder.configure(:timeout => 10)

module LocaleToCountry
  class Timezone

    def initialize(timezone)
      @city = timezone.split('/').last
      begin
        @geo_data = Geocoder.search(@city).first
      rescue StandardError => e
        puts "Error #{e}"
      end
    end


    def city
      @city
    end

    def country
      @geo_data.country if @geo_data
    end

    def coordinates
      @geo_data.coordinates if @geo_data
    end

    def lat
      @geo_data.coordinates.first if @geo_data
    end

    def lng
      @geo_data.coordinates.last if @geo_data
    end

  end
end