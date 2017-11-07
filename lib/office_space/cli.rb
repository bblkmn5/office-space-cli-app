class OfficeSpace::CLI
    def call
        list_locations
        menu
        goodbye
    end

     def list_locations
        #here DOC http://blog.jayfields.com/2006/12/ruby-multiline-strings-here-doc-or.html
        puts "WeWork United States Office Space Locations:"
        puts <<-DOC.gsub(/^\s*/, '')
            1. Custom House - 220 NW 8th Ave Portland OR 97209 - starting at $295/mo
            2. Pioneer Place - 700 SW Fifth Avenue Portland OR 97204 - starting at $295/mo
        DOC

    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the location you would like more info on, type 'list' to see the list again, or type 'exit':"
            input = gets.strip.downcase
            case input
            when '1'
                puts "More info on location 1..."
            when '2'
                puts "More info on location 2..."
            when "list"
                list_locations
            else
                puts "Error. Type list or exit."
            end
        end
    end

    def goodbye
        puts "Thank you for using this program. Goodbye"
    end
end
