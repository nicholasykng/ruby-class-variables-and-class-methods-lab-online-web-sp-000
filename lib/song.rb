class Song
attr_accessor :name, :artist, :genre
def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
end
@@count = 0
def self.count
  @@count
end
@@genres = []
def self.genres
  @@genres = @@genres.uniq
    return @@genres
end
@@artists = []
def self.artists
  @@artists = @@artists.uniq
  return @@artists
end
def self.genre_count
  genre_count = {}
  @@genres.each do |genre|
    if genre_count[genre]
      genre_count[genre] += 1
    else
      genre_count[genre] = 1
    end
  end
    return genre_count
end
def self.artist_count
  artist_count = {}
  @@artists.each do |artist|
    if artist_count[artist]
      artist_count[artist] += 1
    else
      artist_count[artist] = 1
    end
  end
  return artist_count
end


end
