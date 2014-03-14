class Song
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end
  def to_s
    "Song: #@name--#@artist (#@duration)"
  end
end

class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end
  def to_s
    super+" [#@lyrics]"
  end
end

class SuperKaraokeSong < KaraokeSong
  # attr_reader automatically sets getter or 'reader' functions for these instance vars
  attr_reader(:name, :artist, :duration)
  # attr_writer automatically sets setters or 'writer' functions for instance vars
  attr_writer(:name, :artist, :duration)
  # the long-hand method of writing instance getters is as follows
  def name
    @name
  end
  def artist
    @artist
  end
  def duration
    @duration
  end
  # the long-hand method of writing setters or 'writer' is as follows
  def name=(new_name)
    @name = new_name
  end
  def artist=(new_artist)
    @artist = new_artist
  end
  def duration=(new_duration)
    @duration = new_duration
  end

  # virtual attributes do not have a corresponding instance variable
  # instead, it's just a getter and setter that manipulates internal data
  # without letting the outside world know how the internal structure works
  def duration_in_minutes
    @duration/60.0 #force floating point
  end
  def duration_in_minutes(new_duration)
    @duration = (new_duration * 60).to_i
  end
end

# NOTES:  internal states of a class are held as 'instance variables' @instance_var
#         external states are exposed through methods called 'attributes'
#         other functions just doing normal internal stuff are called 'methods'
#         'class variable' is shared among ALL object instances of that particular class @@class_var
#must be initialized before they're used

class SuperDonkersKaraokeSong < SuperKaraokeSong
  @@all_songs_total_plays = 0
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
    @this_song_total_plays = 0
  end

  def play
    @this_song_total_plays += 1
    @@all_songs_total_plays += 1
    "This song: #@this_song_total_plays plays. Total #@@all_songs_total_plays plays"
  end
end

class SongList
  MAX_TIME = 5*60

  def SongList.is_too_long(song)
    return song.duration > MAX_TIME
  end
end

songLyrics = "La dee dah, the song goes on, these lyrics are wrong, silly silly song ..."
song = KaraokeSong.new("Whispering Droids","Khemeka Mhekeneka",1224, songLyrics)
puts song.inspect

puts song.to_s
#MheChem[12:24]

s1 = SuperDonkersKaraokeSong.new('crazy legs', 'the puppets', 433)
s2 = SuperDonkersKaraokeSong.new('funky chicken', 'the gubblers', 123)
s3 = SuperDonkersKaraokeSong.new('sill scotty', 'Monkey Calls', 72)
s4 = SuperDonkersKaraokeSong.new('slip of tha tongs', 'The Dudes', 332)

puts s1.play
puts s2.play
puts s3.play
puts s4.play

puts SongList.is_too_long(s1)
puts SongList.is_too_long(s2)
puts SongList.is_too_long(s3)
puts SongList.is_too_long(s4)

class Monster
  #the following is a class method, which can be called without instantiating an instance object of the class
  def Monster.list
    ['dracula','zombie','frankenstien','ghost']
  end
end

puts Monster.list

# other examples of class methods
puts Math.cos(234)
puts Math.sqrt(1233)
puts File.readable?('someFile.txt')