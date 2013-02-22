class Genre
  attr_accessor :name, :songs, :artists  
  @@genres = []


  def initialize
    @@genres << self
    @songs = []
    @artists = []
  end


  def self.reset_genres
    @@genres = []
  end


  def self.all
    @@genres
  end


  def artists
    Artist.all.each do |artist|
      artist.songs.each do |song|
        if song.genre == self && !@artists.include?(song.artist)
          @artists << song.artist
        end
      end
    end
    @artists
  end


end
