module LocaleToCountry
  class Convert

    class << self

      def from_locale(locale)
        timezone_country_hash.values_at(locale).first
      end

      def from_country(country)
        timezone_country_hash.key(country)
      end

      def country_name(country_code)
        TZInfo::Country.get(country_code).name
      end

      def all_country
        TZInfo::Country.all_codes
      end

      def timezone_country_hash
        result = {}
        all_country.each do |country_code|
          TZInfo::Country.get(country_code).zone_identifiers.each do |timezone|
            result[timezone] = country_name(country_code)
          end
        end
        result
      end
    end
  end
end
