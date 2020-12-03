class CLI

    def start
        puts "welcome person to my events app."
        puts "please enter a zipcode: "
        input = gets.strip
        API.get_events(input)
        Event.all.each.with_index(1) do |e, index|
            puts "#{index} - #{e.name}"
        end

        puts "please choose a number? or by name "
    end
    end 
