class Genre

attr_accessor :name, :songs

@@all = []

def initialize(name)
  @name = name
  save

def self.all
  @@all
end

def save
  @@all << self
end

def songs
  self.songs.collect {|song| song.name}.uniq
end

# has many artists through songs
def artists
  self.songs.collect{|s| s.artists}
end

end
