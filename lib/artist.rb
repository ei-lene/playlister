
class Artist
  attr_accessor :name, :songs
  attr_reader :genres
  @@artists = []

  
  def initialize
    @@artists << self  
    @songs = []
    @genres = []
  end


  def self.reset_artists
    @@artists = []
  end


  def self.count
    @@artists.count
  end

  
  def self.all
    @@artists
  end


  def songs_count
    @songs.count
  end

  
  def add_song(song)
    @songs << song
    song.artist = self
    song.genre.artists << self if song.genre && !song.genre.artists.include?(self) 
  end


  def genres
    self.songs.each do |song|
      @genres << song.genre
    end
    @genres
  end


end
