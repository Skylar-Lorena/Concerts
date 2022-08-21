require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

b1 = Band.new("Ragers", "glen")
b2 = Band.new("Beats", "richmond")
b3 = Band.new("Drum", "glenmont")

v1 = Venue.new("msg", "brooklyn")
v2 = Venue.new("capital", "dc")
v3 = Venue.new("falcons", "atlanta")


c1 = Concert.new("Nov. 3", b1, v1)
c2 = Concert.new("Aug. 10", b2, v2)
c3 = Concert.new("Mar. 11", b3, v3)
c4 = Concert.new("Jul. 7", b1, v2)
c5 = Concert.new("Jul. 10", b2, v3)
c6 = Concert.new("Jul. 7", b2, v1)


binding.pry
puts "goodbye"
