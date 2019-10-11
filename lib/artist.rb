require 'pry'

class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
  end

  def add_song(song)
    Song.all.select {|song| song.artist == self}
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    add_song(new_song)
  end
  
  end

  def self.song_count
    Song.all.count
  end
end
