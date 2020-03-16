class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    gallery_paintings = Painting.all.select{|painting| painting.gallery == self}
  end

  def artists
    paintings.map(&:artist)
  end

  def artist_name
    artists.map(&:name)
  end

  def most_expensive_painting
    sort_by_price = paintings.sort do |painting_a, painting_b|
      painting_b.price <=> painting_a.price
    end
    sort_by_price.first
  end
end
