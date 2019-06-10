
class Startup
    @@all_startups = []
    
    attr_accessor :name
    attr_reader :founder, :domain

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all_startups << self
    end

    def self.all
        @@all_startups
    end

    def self.find_by_founder(founder)
        @@all_startups.find {|founder| include?(founder)} 
    end

end

