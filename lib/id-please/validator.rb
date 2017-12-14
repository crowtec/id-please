Dir[File.dirname(__FILE__) + '/countries/*.rb'].each {|file| require file }

module IdPlease
  class Validator
    def self.check id, country
      Object.const_get("IdPlease::#{country.upcase}::Validator").new.check(id)
    end

  end
end
