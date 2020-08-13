class ClimbersCli::Route
    attr_accessor :name, :type, :rating, :stars, :pitches, :location

    @@all = []

    def initialize(name:, type:, rating:, stars:, pitches:, location:)
        self.name = name
        self.type = type
        self.rating = rating
        self.stars = stars
        self.pitches = pitches
        self.location = location
        self.save
    end

    def sport_routes
        @@all.map do |r|
            r.select("rating = Sport")
        end
    end 

    def save 
        @@all << self
    end

    def self.all
        @@all
    end

    # def self.get_names(input)
    #     @@all.select do |i|
    #        i.name.start_with?(input)
    #     end
    # end
end 