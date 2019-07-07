require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../room.rb")
require_relative("../song.rb")


class TestRoom < Minitest::Test

  def setup

    @guest_list1 = [@guest1, @guest2]
    @guest_list2 = [@guest10,@guest11,@guest12] 
    @guest_list3 = [@guest13]

    @song_list1 = [@song_1, @song_2]
    @song_list2 = [@song_3, @song_4, @song_5]
    @song_list3 = [@song_6, @song_7, @song_8, @song_9]

    @entry_fee1 = 5
    @entry_fee2 = 10
    @entry_fee3 = 15

    @room1 = Room.new("Rock", 10, @song_list1, @guest_list1, 5)
    @room2 = Room.new("Pop", 8, @song_list2, @guest_list2, 10)
    @room3 = Room.new("Blues", 6,@song_list3, @guest_list3, 15)

    # @new_group = [@guest4, @guest5, @guest6, @guest7, @guest8, @guest9]
    # # @rooms = [@room1, @room2, @room3]
  end

  def test_room_has_name
    assert_equal("Rock", @room1.name)
  end


  def test_room_has_space
    assert_equal(10,@room1.space)
  end

  def test_has_guest
    assert_equal([@guest13],@room3.guest_list)
  end


  def test_count_guest_in_room
    assert_equal(3, @guest_list2.length)
  end

  def test_add_new_guest_in_room
    @room2.add_new_guest(@guest3)
    assert_equal(4, @guest_list2.length)
  end


  def test_remove_guest_from_room
    @room2.remove_guest(2)
    assert_equal([@guest10,@guest11],@guest_list2)
  end

  def test_count_songs_in_room
    assert_equal(4, @song_list3.length)
  end

  def test_add_new_song_in_room
    @room3.add_new_song(@song_10)
    assert_equal(5, @song_list3.length)
  end

  def test_room_has_space
    assert_equal(6,@room3.space)
  end

##extension

  def test_room_has_available_space
    available_space = (@room3.space - @guest_list3.length)
    assert_equal(5,@room3.available_space)
  end

  def test_room_full
    @room3.add_new_guest(@guest4)
    @room3.add_new_guest(@guest5)
    @room3.add_new_guest(@guest6)
    @room3.add_new_guest(@guest7)
    @room3.add_new_guest(@guest8)
    @room3.add_new_guest(@guest9)
    assert_equal("Room full",@room3.add_new_guest("Jack"))
  end


  def test_room_has_entry_fee
    assert_equal(5,@room1.entry_fee)
  end


  # def test_check_guest_has_enough_cash
  #   cash = @guest.cash(@room.guest_list)
  #   guest_list = guest_list(@room)
  #   # guest = @guest
  #   has_enough_cash = @room2.check_guest_has_enough_cash(@guest.cash,@entry_fee)
  #   @room2.push(@guest7)
  #
  #   assert_equal(true, has_enough_cash)
  # end

  #
  # def test_customer_can_afford_pet__sufficient_funds
  #   customer = @customers[0]
  #   can_buy_pet = customer_can_afford_pet(customer, @new_pet)
  #   assert_equal(true, can_buy_pet)
  # end

  # def test_room_can_checkin_new_group
  # # @room3.guest_list << @new_group
  # assert_equal(4,@room3.available_space)
  # end


# @room3.available_space <= @new_group.length

  # def test_room_can_checkin_new_group
  # @room1.guest_list << @new_group
  # assert_equal("Can Checkin New Group!",@room1.available_space)
  # end

  # def test_stock_count
  #     count = stock_count(@pet_shop)
  #     assert_equal(6, count)
  #   end
  # def test_can_get_fish
  #   fish = @river.get_fish
  #   assert_equal(@fish3.name, fish.name)
  # end



  # def test_can_have_name
  #   assert_equal("Amazon", @river.name)
  # end
  #
  # def test_initial_state
  #   assert_equal(3, @river.number_of_fishes)
  # end
  #
  # def test_can_get_fish
  #   fish = @river.get_fish
  #   assert_equal(@fish3.name, fish.name)
  # end
end
