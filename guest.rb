class Guest

  attr_accessor(:name, :favourite_song, :cash)

  def initialize(name, favourite_song, cash)
    @name = name
    @favourite_song = favourite_song
    @cash = cash

  end

  #
  # def guest_can_checkin
  #     return @room << @guest
  # end
end
