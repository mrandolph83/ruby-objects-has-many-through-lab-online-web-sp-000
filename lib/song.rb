class Song
  attr_accessor :name, :genre, :artist

  @@all = []

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end

  def self.all
    @@all
  end
end
