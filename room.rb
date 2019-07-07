class Room

  attr_accessor(:name, :space, :song_list, :guest_list, :entry_fee)

  def initialize(name, space, song_list, guest_list, entry_fee)
    @name = name
    @space = space
    @song_list = song_list
    @guest_list = guest_list
    @entry_fee = entry_fee

  end


  def add_new_guest(new_guest)
    @guest_list << new_guest
  end

  def remove_guest(index)
    guest_list.delete_at(index)
  end

  def add_new_song(new_song)
    @song_list << new_song
  end

  def available_space()
    return space - @guest_list.length
  end

  def add_new_guest(new_guest)
    if space > guest_list.length
      p "guest successful added to room " + name
      @guest_list << new_guest

  else
      p "Room " + name + " is full"
      return "Room full"

  end
  end


  # def check_guest_has_enough_cash(cash, entry_fee)
  #     @guest_list << new_guest
  # return @room[@guest.cash] > @room.entry_fee ? true : false
  # end


  #
end
