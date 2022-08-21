class Concert
    
    attr_reader :date, :band, :venue
    attr_writer :date, :band, :venue
  
    @@all = []
  
    def initialize(date, band, venue)
      @date = date
      @band = band
      @venue = venue
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def hometown_show?
      if self.band.hometown == self.venue.city
        true
      else
        false
      end
    end
  
  end