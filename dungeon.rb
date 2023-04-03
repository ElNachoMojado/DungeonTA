class Dungeon
  attr_accesor :player

  def initialize(player)
    @player = player
    @rooms = {}
  end
  
end