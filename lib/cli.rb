class CLI
    attr_accessor :input
    attr_reader :api 

    #instanciate the API and the input 
    def initialize
        @api = API.new
        @input = " "
    end

 #Call the api, welcome show_menu and git_user  method and 
    def start
        api.get_holiday_info
        welcome 
        show_menu 
        user_input
    end
        
    #Desplay the menu 
    def show_menu
        show_holiday_list
        prompt_holiday 
        puts "Type y to continue \nPress any key to exit"
        space
        user_input
        if input.downcase == "y"
            show_menu
        else    
            goodbye
        end
    end

    #Iterate through the holiday api and 
    def prompt_holiday
        puts "Type the corsponding number to see the holiday details"
        user_input 
         validate_input
         index = input.to_i - 1
         holiday = Holiday.all[index]  #store user input into holiday varaiable 
         display_holiday_deails(holiday)
    end

#   Desplays the Slected Hoiday api 
    def display_holiday_deails(holiday)
        space
        puts "Holiday Name:  \n#{holiday.name} "
        space
        puts "Holiday Date: \n#{holiday.date} " 
        space
        puts "Holiday Description: \n#{holiday.description} "
        space
        puts "Country Celebrate: \n#{holiday.country} "
        space
    end

    #validate the holiday Api
    def validate_input
        while !(input.to_i >= 1 && input.to_i < Holiday.all.length) do
            space
            show_holiday_list
            puts "Sorry invlaid input please number correspondence to a holiday"
        user_input
            space
        end
    end

    #get user input 
    def user_input
        self.input = gets.chomp
    end

    #Iterate throught the holiday api 
    def show_holiday_list
        space
        Holiday.all.each_with_index do |holiday, index|
            puts "#{index+1}. #{holiday.name}"
        end
        space
    end

    def welcome
        space
        puts "Welcome to World Holidays "
        space
    end

    def space
        puts ""
    end

    def goodbye
        puts "Thank you for cheking this cli porject"
        space
    end
            
end

