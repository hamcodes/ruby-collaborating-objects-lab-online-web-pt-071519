class Song 
  attr_accessor :artist, :name
  
  @@all = []
  
    def self.all
    @@all
  end
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  
  
end