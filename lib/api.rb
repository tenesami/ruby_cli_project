#get data from the inernate hitting an API
class API
    BASE_URL = "https://calendarific.com/api/v2/holidays?&api_key=#{ENV["HOLIDAY_API_KEY"]}&country=US&year=2020"
    
    def get_holiday_info
        respo = HTTParty.get(BASE_URL)
        
        #Store the API Data in to an holi_arr variable   
        holi_arr = respo["response"]["holidays"]

        #Iterate through to the world holidays api 
           holi_arr.each do |response_hash|                     
                      holi_hash = {
                        country: response_hash["country"]["name"],
                        name: response_hash["name"],
                        date: response_hash["date"]["iso"],
                        description: response_hash["description"]                         
                      }  
    #create new Holiday object and stored 
    Holiday.new(holi_hash)
   
         end
         
    end
end
