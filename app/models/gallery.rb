class Gallery

  attr_reader :name, :city
  
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def paintings 
    Painting.all.select do |painting|
      # binding.pry
      painting.gallery == self
    end
  end

  def artists
    # Painting.all.select do |painting|
    #   binding.pry
    #   painting.gallery == self
    # end
    # binding.pry
    paintings.map do |painting|
      # binding.pry
      painting.artist
    end
  end

  def artist_names
    artists.map do |artist|
      artist.name
    end
  end


  def most_expensive_painting
    # sorted = paintings.sort do |a, b|
    #   b.price <=> a.price
    # end
    # sorted.first

    # price = 0
    # painting_expensive = {}
    # paintings.each do |painting|
    #   if price < painting.price
    #     price = painting.price
    #     painting_expensive = painting
    #   end
    # end
    # painting_expensive

    paintings.max_by do |painting|
      painting.price
    end
    
  end


  def self.all 
    @@all
  end
end