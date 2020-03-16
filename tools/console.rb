require_relative '../config/environment.rb'

lee = Artist.new("Lee Bontecou", 30)
marina = Artist.new("Marina Abramovíc", 25)

untitled_1 = Painting.new("untitled", 999_000, lee, gallerie1)
untitled_2 = Painting.new("untitled 2", 99_000, marina, gallerie2)

gallerie1 = Gallery.new("Gallerie 1, Paris")
gallerie2 = Gallery.new("Gallerie 2, Kyoto")

binding.pry

puts "Bob Ross rules."
