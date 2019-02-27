require 'pry'
class MP3Importer
attr_accessor :artist, :path, :genre
@@all = []

def initialize(path)
  @path = path
  @@all << self
  #####################binding.pry
end

def files
#binding.pry
   Dir["#{@path}/**/*.mp3"].map do |track|
   #track.gsub("#{@path}/","")
  # binding.pry
   track.gsub(@path + "/","")
   #track.gsub(@path.concat("/"),"")
   # @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
   #@files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
 end
end
#normalizes the filename to just the mp3 filename with no path (FAILED - 3)
  #import

def import
#song_by_filename
 files.each{|f| Song.new_by_filename(f)}

end

end
# answer => Dir["#{@path}/**/*.mp3"]
#original text => Dir["/path/to/search/**/*.rb"]
#https://stackoverflow.com/questions/1755665/get-names-of-all-files-from-a-folder-with-ruby

# (#<MP3Importer>)> Dir["#{@path}/**/*.mp3"]
# => ["./spec/fixtures/mp3s/Real Estate - It's Real - hip-hop.mp3",
#  "./spec/fixtures/mp3s/Real Estate - Green Aisles - country.mp3",
#  "./spec/fixtures/mp3s/Thundercat - For Love I Come - dance.mp3",
#  "./spec/fixtures/mp3s/Action Bronson - Larry Csonka - indie.mp3"]
# [3] pry(#<MP3Importer>)>
