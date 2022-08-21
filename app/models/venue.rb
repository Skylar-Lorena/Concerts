class Venue
 
    attr_reader :title, :city
  attr_writer :title

  @@all = []

  def initialize(title, city)
    @title = title
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def concerts
    Concert.all.find do |concert|
      concert.venue == self
    end
  end

  def bands
    Concert.all.find do |concert|
      concert.venue == self
    end.band
  end

  def self.most_hometown_shows

  end

end