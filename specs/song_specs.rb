require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../room.rb")
require_relative("../song.rb")

class TestSong < Minitest::Test

def setup
  @song_1 = Song.new("MetallicVibes")
  @song_2 = Song.new("DancingWaves")
  @song_3 = Song.new("GreenFields")
  @song_4 = Song.new("Rosa")
  @song_5 = Song.new("ItalianVibes")
  @song_6 = Song.new("Paradise")
  @song_7 = Song.new("Braw")
  @song_8 = Song.new("Bella")
  @song_9 = Song.new("Sunset")
  @song_10 = Song.new("Victory")
end

def test_song_has_title
  assert_equal("MetallicVibes",@song_1.title)
end

end
