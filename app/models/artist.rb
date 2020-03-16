class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    paintings.map(&:gallery).uniq
  end

  def cities
    cities = paintings.map(&:gallery.city)
    cities!
  end

  def self.total_experience
    years = @@all.map(&:years_experience)
    years.sum
  end

  def self.most_prolific
    most_prolif = @@all.sort do |artist_a, artist_b| 
      artist_b.paintings.length / artist_b.years_experience <=> artist_a.paintings.length / artist_a.years_experience
    end
    most_prolif.first
  end
end
