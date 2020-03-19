require_relative '../config/environment.rb'

a1 = Artist.new("Andy W", 30)
a2 = Artist.new("Jeff K", 8)

g1 = Gallery.new("David Zwirner", "New York City")
g2 = Gallery.new("Beebopaloo", "London")

p1 = Painting.new("untitled colors", 999,  a1, g1)
p1 = Painting.new("dots dashes", 750,  a1, g1)
p1 = Painting.new("flannel", 500,  a1, g2)
p1 = Painting.new("mundane dog", 9000,  a2, g2)

binding.pry

puts "Bob Ross rules."
