class Artist

  @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all 
    @@all
  end

  def paintings
    # binding.pry
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    galleries = paintings.map do |painting|
      painting.gallery
    end
    galleries.uniq
  end

  def cities
    cities = galleries.map do |gallery|
      gallery.city
    end
    cities.uniq   
  end

  def self.total_experience
    # @@all.map do |artist|
    #   artist.years_experience
    # end.sum

    @@all.sum do |artist|
      artist.years_experience
    end
  end

  def self.most_prolific
    @@all.max_by do |artist|
      # binding.pry
      artist.paintings.length / artist.years_experience
    end
  end

  def create_painting(title, price, gallery)
    # def initialize(title, price, gallery, artist)
    Painting.new(title, price, gallery, self)
  end

end