require 'pry'

class ClimbersCli::API

    def self.get_routes
        response = RestClient.get("https://www.mountainproject.com/data/get-routes-for-lat-lon?lat=47&lon=-121&maxResults=100&maxDistance=200&key=200088267-568c28967d867abfc9c1833fa97a8c05")
        data = JSON.parse(response)   

        data["routes"].each do |route_details|
            name = route_details["name"]
            type = route_details["type"]
            rating = route_details["rating"]
            stars = route_details["stars"]
            pitches = route_details["pitches"]
            location = route_details["location"]

            ClimbersCli::Route.new(
                name: name, 
                type: type, 
                rating: rating,  
                stars: stars, 
                pitches: pitches, 
                location: location)
        end
        # binding.pry 
    end
end 

<<-NOTES

NEED:
-Filter API hash items into individual route style hash (Or objects?...)
    -Sport, Trad, Alpine, Boulders


PROBLEMS:
Done. -CLI won't exit properly..
Done. -Explain self
-Figure out how inputs work, How can you explain to someone?
-conceptual holes:
    -OO in general.  Which code goes where to talk with certain classes?
    -What do I need to create objects.. 
    -Maniputlating hashes.. 
    -pry


NOTES