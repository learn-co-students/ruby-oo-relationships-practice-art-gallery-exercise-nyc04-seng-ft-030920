class Artist

  @@all = []

  # attr_accessor 

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all # class method
    @@all
  end

  # Returns an `array` all the paintings by an artist
  def paintings
    Painting.all.select {|painting|
      painting.artist == self 
    }
  end


  # Returns an `array` of all the galleries that an artist has paintings in
  def galleries

  end

end
