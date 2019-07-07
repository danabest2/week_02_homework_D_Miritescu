require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")
require_relative("../guest.rb")
require_relative("../room.rb")

class TestGuest < Minitest::Test

def setup

  @guest1 = Guest.new("Garry",@song_1, 2)
  @quest2 = Guest.new("Kaska",@song_9, 6)
  @quest3 = Guest.new("Aleks",@son_3, 8)
  @guset4 = Guest.new("Perle",@song_7, 10)
  @guest5 = Guest.new("Silvie",@song_10, 11)
  @guest6 = Guest.new("Laura",@song_9, 12)
  @guest7 = Guest.new("Morag",@song_4, 15)
  @guest8 = Guest.new("Maureen",@song_6, 20)
  @guest9 = Guest.new("Jack",@song_3, 30)
  @guest10 = Guest.new("George",@song_3, 5)
  @guest11 = Guest.new("Richard",@song_10, 15)
  @guest12 = Guest.new("Eva", @song_9, 30)
  @guest13 = Guest.new("Tom",@song_2, 7)


end


def test_guest_can_have_name
    assert_equal("Garry", @guest1.name)
end

def test_guest_can_have_favourite_song
    assert_equal(@song_1, @guest1.favourite_song)
end



# def test_quest_can_checkin
#   can_checkin = @room.get_new_guest
#   assert_equal(2, @room3 =[:guest_list].size)

end
# def test_can_get_fish
#     fish = @river.get_fish
#     assert_equal(@fish3.name, fish.name)
#   end
