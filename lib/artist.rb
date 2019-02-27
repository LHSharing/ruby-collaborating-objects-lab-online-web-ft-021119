class Artist
  #binding.pry

  attr_accessor :name, :songs


  def initialize(name)
    @name = name
    @@all << self
  end

def self.artist=(artist)
  @artist = artist
end

end
