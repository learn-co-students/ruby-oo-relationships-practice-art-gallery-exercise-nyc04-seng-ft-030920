require_relative '../config/environment.rb'

rei = Artist.new("Rei", 5)
sylwia = Artist.new("Sylwia", 20)
graham = Artist.new("Graham", 35)
other = Artist.new("Other", 42)
javits = Gallery.new("Javits Center", "New York")
barclays = Gallery.new("Barclays Center", "Brooklyn")
njpac = Gallery.new("NJPAC", "Newark")
staples = Gallery.new("Staples Center", "Los Angeles")
Painting.new("master piece", 1000, javits, rei)
Painting.new("anime", 5000, staples, rei)
Painting.new("gundams", 400000, njpac, rei)
Painting.new("kickboxing", 6000, barclays, rei)
Painting.new("I heart React", 7000, javits, sylwia)
Painting.new("Spice Girls", 9000, barclays, graham)
Painting.new("C-Virus", 10, staples, other)
Painting.new("Fortnite the Painting", 70000, njpac, other)
Painting.new("Coding", 10000, barclays, other)
Painting.new("Cars", 1000, javits, other)

binding.pry

puts "Bob Ross rules."
