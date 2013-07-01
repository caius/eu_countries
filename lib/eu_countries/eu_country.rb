module ISO3166
  class EUCountry < Country

    # Returns an array of the alpha2 codes for all EU countries
    def self.codes
      %w(AT BE BG HR CY CZ DK EE FI FR DE GB GR HU IE IT LV LT LU MT NL PL PT RO SK SI ES SE)
    end

    # Returns an array of EUCountry instances. By default them all, but you can filter using :except param.
    def self.all opts={}
      opts ||= {}
      da_codes = codes.dup

      if (( exclude = opts.delete(:except) ))
        da_codes -= Array(exclude)
      end

      da_codes.map {|code| EUCountry[code] }
    end

  end
end
