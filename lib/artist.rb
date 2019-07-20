class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def add_song(song)
    @songs << song 
    song.artist = self 
    song 
  end
  
  def songs 
    @songs 
  end
  
  def save 
    @@all << self 
    self 
  end
  
  def self.all 
    @@all 
  end
  
  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name) 
  end
  
  def print_songs 
    self.songs.each {|song| puts song.name}
  end
end
