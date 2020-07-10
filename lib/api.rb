#get data from the inernate using scraping or hitting an API
class API
    BASE_URL = "https://calendarific.com/api/v2/holidays?&api_key=#{ENV["HOLIDAY_API_KEY"]}&country=US&year=2020"
    
    def get_holiday_info
        respo = HTTParty.get(BASE_URL)
        
    #     #make request to the rworld bank 
    #     holi_arr = respo["response"]["holidays"]
    #        holi_arr.each do |response_hash|                     
    #                   holi_hash = {
    #                     country: response_hash["country"]["name"],
    #                     name: response_hash["name"],
    #                     date: response_hash["date"]["iso"],
    #                     description: response_hash["description"]                         
    #                   }                     
    # Holiday.new(holi_hash)
    # #binding.pry
    #      end
         
    end
end
