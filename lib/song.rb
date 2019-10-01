class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    song.save
    song
  end
  
  def self.new_by_name(song_name)
    song = Song.create
    song.name = song_name
    song
  end
  
  def self.create_by_name(song_name)
    self.new_by_name(song_name)
    @@all << song
  end
  
  def self.find_by_name(song_name)
    self.all.find {|song| song.name == song.name}
  end
  
  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name)
end


def self.alphabetical
  self.all.sort_by {so|song| song.name}
end

def self.new_from_filename(song)
  split_file = song.split(" - ")
  artist = split_file[0]
  song_name = split_file[1].split(".")[0]
 song =  self.new_by_name(song_name)
 song.
end


end