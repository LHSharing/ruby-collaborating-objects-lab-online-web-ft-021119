require "pry"
class Artist
  #binding.pry

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    #@@all << self
  end

  def add_song(song)
    @songs << song
    #song.artist = self
  end

  def save
    @@all << self
  end


  def self.all
    @@all
  end


# def self.find_or_create_by_name(name)
#    self.find(name) ? self.find(name) : self.create(name)
#  end

   def self.find_or_create_by_name(name)
     Artist.all.find{ |artist| artist.name == name } || Artist.new(name)
   end

   # if self.find(file_name)
  #    self.find(file_name)
  # else
  #    self.create(file_name)
  #   #song = Song.new(file_name)
  #  #@songs << song
  #  #song.artist = self
  # end
  #end
  def print_songs
  @songs.each {|track| puts track.name}
  #@artist.songs
  end

  #  def self.find(name)

  #  end


  #  def self.create(name)

  #  end


    # def songs
    #   @songs
    # end


    # def self.artist=(artist)
    #   @artist = artist
    # end

end
