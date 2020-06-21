class ClimbersCli::Routes
    attr_accessor :name, :type, :rating, :stars, :pitches

    def self.details    
        route1.self.new
        route1.name = "Acid Baby"
        route1.type = "Trad"
        route1.rating = "5.10+"
        route1.stars = "4.9"
        route1.pitches = "7"
       

        route2.self.new
        route2.name = "Toxic Shock"
        route2.type = "Trad"
        route2.rating = "5.9"
        route2.stars = "4.6"
        route2.pitches = "1"
      
        [route1, route2]
    end
end 
