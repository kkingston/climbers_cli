class ClimbersCli::CLI 
    def call
        puts " "
        puts " "
        puts "-----------Welcome to the Washington Climber's CLI!-----------"
        puts "Search from a range of climbing routes around Washington State"
        puts " "
        puts "Hold your rope while we gather your climbing routes!"
        ClimbersCli::API.get_routes
        puts " "
        print_menu
        puts " "
        puts " "
    end

    def print_menu
        puts "--------------------------------------------------"
        puts "Select which climbing style you'd like to sort by:"
        puts " "
        puts <<-DOC 
            1. ALL STYLES
            2. SPORT
            3. TRAD
            4. BOULDER
            5. ALPINE
            0. EXIT Climber's CLI
            DOC
        menu 
    end

    def menu 
        input = gets.strip

        if input == "1"
            route_list
        elsif input == "2"
            route_list
        elsif input == "3"
            route_list
        elsif input == "4"
            route_list
        elsif input == "5"
            print_menu
        elsif input == "0"
            goodbye
            exit 
        else 
            puts "Seems you've wandered off trail, please try your selection again!"
            print_menu
        end        
    end 
            
    def route_list
        puts "--------------------------------------------------"
        puts "Select route from the following for route details:"
        puts " "
        puts " "
        puts "0. EXIT Climber's CLI"
        puts " "
        puts "1. Return to MENU"
        puts " "
        ClimbersCli::Route.all.each.with_index(2) do |route, num|
            puts "#{num}. #{route.name}"
            puts " "
        end
        puts " "
        input = gets.strip.downcase
        if input == "1"
            print_menu
        elsif input == "2"
            route_details
        elsif input == "3"
            route_details
        elsif input == "12"
            route_details
        elsif input == "5"
            print_menu
        elsif input == "0"
            goodbye
            exit 
        else 
            puts "Seems you've wandered off trail, please try your selection again!"
            route_list
        end         
    end

    def route_details
        puts "----------------------------"
        puts "Here are your route details:"
        puts " "
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
        
        if input == "1"
            route_list
        elsif input == "2"
            print_menu 
        elsif input == "0"
            goodbye
        else
            puts "Seems you've wandered off trail, please try your selection again!"
            route_details
        end
    end 
    
    def goodbye
        puts "Thanks for stopping by, happy climbing!"
    end
end
