class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genre_count
    hash = Hash.new
    @@genres.each do |item|
      if hash[item]
        hash[item] += 1
      else
        hash[item] = 1
      end
    end
    hash
  end
  
end