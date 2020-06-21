class ClimbersCli::API

    def self.get_routes
        routes = RestClient.get("https://www.mountainproject.com/data/get-routes-for-lat-lon?lat=47&lon=-121&maxResults=100&maxDistance=200&minDiff&key=200088267-568c28967d867abfc9c1833fa97a8c05")
    @route_list = JSON.parse(routes)
    binding.pry    
    end
end 
