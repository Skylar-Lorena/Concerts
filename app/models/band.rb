class Band

    attr_reader :name, :hometown
  attr_writer :name

  @@all = []

  def initialize(name, hometown)
    @name = name
    @hometown = hometown
    @@all << self
  end

  def self.all
    @@all
  end

  def play_in_venue(venue, date)
    Concert.new(date, self, venue)
  end

  def concerts
    Concert.all.find do |concert|
      concert.band == self
    end
  end

  def self.all_introductions
    self.all.each do |band|
      puts "Hello, we are #{band.name} and we're from #{band.hometown}"
    end
  end

end