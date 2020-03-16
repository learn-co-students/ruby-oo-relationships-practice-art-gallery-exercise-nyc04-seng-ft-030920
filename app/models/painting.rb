class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    @@all << self
  end

  def self.total_price 
    # total = 0
    # @@all.each do |painting|
    #   total += painting.price
    # end

    @@all.sum do |painting|
      painting.price
    end
  end

  def self.all 
    @@all
  end

end