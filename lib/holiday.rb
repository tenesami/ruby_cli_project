class Holiday
    attr_accessor :name, :description, :country, :date, :type, :locations, :states
    
    @@all = []

    def initialize(attr_hash)
        # can we refactor this code to make it clean?
        @name = attr_hash[:name]
        @description = attr_hash[:description]
        @country = attr_hash[:country]
        @date = attr_hash[:date]
        @type = attr_hash[:type]
        @locations = attr_hash[:locations]
        @states = attr_hash[:states]
        save
    end

    def self.all
        @@all 
    end
   
     def save
         @@all << self
     end
end