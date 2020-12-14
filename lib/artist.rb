class Artist

@@all = []

attr_accessor :songs, :genre
attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end

  def new_song(name, genre)
      Song.new(name, self, genre)
    end


  def songs
      @songs.select do |song| song.artist == self
  end
end

end
