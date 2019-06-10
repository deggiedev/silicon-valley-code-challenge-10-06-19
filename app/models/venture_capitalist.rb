class VentureCapitalist
    @@venture_capitalists = []
    
    attr_accessor :name, :total_worth
   
    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@venture_capitalists << self
    end

    def self.all
        @@venture_capitalists
    end

    def self.tres_commas_club
        trescommasclub = []
        @@venture_capitalists.select do |vcapitalist|
            if vcapitalist.total_worth > 1000000000
                trescommasclub << vcapitalist
            end
        end
        trescommasclub
    end

end
