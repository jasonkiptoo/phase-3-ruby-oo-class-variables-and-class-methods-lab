class Song
  attr_accessor :name, :artist, :genre

  @@count = 0

# create empt array of the
  @@genres  = []

  @@artists = []

  def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@artists << @artist
      @@genres << @genre
      # increment the count fn
      @@count = @@count + 1

  end

  def self.count
  @@count
  end

  def self.genres
      @@genres.uniq
  end

  def self.artists
      @@artists.uniq
  end

  def self.genre_count
      @@genres.tally
  end

  def self.artist_count
      @@artists.tally
  end

end
