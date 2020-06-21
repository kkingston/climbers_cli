class ClimbersCli::CLI 
    def call
        puts " "
        puts " "
        puts "Welcome to the Pacific Northwest Climber's CLI!"
        puts "Search a wide selection of climbing routes in Washington State"
        ClimbersCli::API.get_routes
        puts " "
        menu
        puts " "
        puts " "
    end

    def menu 
        input = nil
        while input != "0"
            puts "How would you like to filter your results?"
            puts ""
            puts <<-DOC 
                1. TYPE (Sport, Trad, Boulder, Alpine)
                2. RATING (5. scale or V scale)
                0. EXIT Climber's CLI 
            DOC
            input = gets.strip.downcase
            case input
            when "1"
                route_type
            when "2"
                route_ratings
            when "0"
                goodbye
            else
                puts "Seems you've wandered off trail, please try your selection again!"
            end
        end
    end

    def route_type
        input = nil 
        while input != "0"
            puts "Select which climbing style you's like to sort by:"
            puts " "
            puts <<-DOC 
                1. SPORT
                2. TRAD
                3. BOULDER
                4. ALPINE
                5. Return to MENU 
                0. EXIT Climber's CLI
            DOC
            input = gets.strip.downcase
            case input
            when "1"
                puts "List of sport climbs"
                route_list
            when "2"
                puts "List of trad climbs"
                route_list
            when "3"
                puts "List of boulder problems"
                route_list
            when "4"
                puts "List of alpine climbs"
                route_list
            when "5"
                menu 
            when "0"
                goodbye
            else
                puts "Seems you've wandered off trail, please try your selection again!"
            end
        end
    end 

    def route_ratings
        input = nil 
        while input != "0"
            puts "How would you like to sort your routes?"
            puts " "
            puts <<-DOC 
                1. Ratings using 5.- scale
                2. Ratings using V-scale
                3. Return to MENU
                0. EXIT Climber's CLI
            DOC
            input = gets.strip.downcase
            case input
            when "1"
                puts "List of climbs using 5.- scale"
                route_list
            when "2"
                puts "List of climbs using V-scale"
                route_list
            when "3"
                menu 
            when "0"
                goodbye
            else
                puts "Seems you've wandered off trail, please try your selection again!"
            end
        end
    end 
            
    def route_list
        input = nil 
        while input != "0"
            puts "Select route from the following for specific route details:"
            puts ""
            puts <<-DOC
                1. Acid Baby
                2. Enchantment
                3. Road to Zion
                4. Valkryie
                5. Return to MENU
                0. EXIT Climber's CLI 
            DOC
            puts " "
            input = gets.strip.downcase
            case input
            when "1"
                route_details
            when "2"
                route_details
            when "3"
                route_details
            when "4"
                route_details
            when "5"
                menu 
            when "0"
                goodbye
            else
                puts "Seems you've wandered off trail, please try your selection again!"
            end
        end
    end

    def route_details
        @routes = Routes.details
        input = nil 
        while input != "0"
            puts <<-DOC
                Name: Acid Baby
                Type: Trad
                Rating: 5.10+
                Stars: 4.9
                Pitches: 7
                Location:
                    Washington,
                    Central-East Cascades, Wenatchee, & Leavenworth,
                    Stuart-Enchantments,
                    Aasgard Pass
            DOC
            puts " "
            puts "1. Return to list of routes"
            puts "2. Return to MENU"
            puts "0. EXIT Climber's CLI"
            puts " "
            input = gets.strip.downcase
            case input
            when "1"
                route_list
            when "2"
                menu 
            when "0"
                goodbye
            else
                puts "Seems you've wandered off trail, please try your selection again!"
            end
        end
    end 
    
    def goodbye
        puts "Thanks for stopping by, happy climbing!"
    end
end

