class Dungeon
  attr_accessor :player

  def initialize(player)
    @player = player
    @rooms = {}
  end

  def add_room(reference, name, description, connections)
    @rooms[reference] = Room.new(reference, name, description, connections)
  end
end

Player = Struct.new(:name, :location)
Room = Struct.new(:reference, :name, :description, :connections)

me = Player.new("Dany")
calab = Dungeon.new(me)
calab.add_room(:largecave, "Large Cave", "a large cavernous cave", {west: :smallcave})
calab.add_room(:smallcave, "Small cave", "a small, claustrophobic cave", {east: :largecave})
puts calab.player.name