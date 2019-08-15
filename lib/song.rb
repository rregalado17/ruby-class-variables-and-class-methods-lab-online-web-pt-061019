class Song 

  attr_accessor :name, :artist, :genre #create the setter and getter methods

  @@count = 0
  @@artists = [] #creating empty arrays for the artists/genres being created
  @@genres = []


  def initialize(name, artist, genre)
    @name = name          #define the arguments taken in and what they represent when initialized
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist #shove the artist/genre into the array
    @@genres << genre 
  end 
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq #calls on self.artists/self.genres to create an array with no duplicates
  end
  
  def self.genres
    @@genres.uniq 
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
  def self.artist_count
     @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end
end