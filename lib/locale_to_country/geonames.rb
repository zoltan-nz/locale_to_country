require 'net/http'

module LocaleToCountry
  class GeoNames

    @username = ''
    @password = ''


            class << self
              def search(string)
				url = URI.parse("http://api.geonames.org/searchJSON?username=#{@username}&password=#{@password}&q=#{string}")
				req = Net::HTTP::Get.new(url.to_s)
				res = Net::HTTP.start(url.host, url.port) {|http|
  						http.request(req)
						}
				res.body
              end
            end
  end
end
