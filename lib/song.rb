
class Song
  attr_accessor :genre, :artist, :name
  @@songs = []
  
  def initialize
    @@songs << self
  end


  def genre=(genre)
    @genre=genre
    genre.songs << self
  end

  def self.all
    @@songs
  end

end

