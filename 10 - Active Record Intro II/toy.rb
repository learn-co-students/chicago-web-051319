# A player has many jerseys, jersey belongs to one player
# player has a handle and a ranking, only make ranking editable
# A jersey has a color and a sponsor
# a player wants a unique list of all their jersey colors
# app should be able to report on average ranking of all players

class Player
  attr_reader :handle, :jerseys
  attr_accessor :ranking

  def initialize(handle, ranking)
    @handle = handle
    @ranking = ranking
    @jerseys = []
  end

  def add_jersey(jersey)
    jerseys << jersey
  end

  def jerseys
    Jersey.all.select do |jersey|
      jersey.player == self
    end
  end

  # def handle
  #   @handle
  # end
end

class Jersey
  attr_reader :color, :sponsor, :player

  @@all = []

  def initialize(color, sponsor, player)
    @color = color
    @sponsor = sponsor
    @player = player
    @@all << self
  end

  def self.all
    @@all
  end
end

# Make a player and some jerseys, jerseys are SSOT so they hold the player they belong to, player needs to access Jersey.all somehow to search for its own jerseys
 # Also don't forget readers

# player = Player.new("duke", 4)
# p player.class == Player
# p player.handle == "duke"
# p player.ranking == 4
# player.ranking = player.ranking + 1000
# p player.ranking == 1004
#
#
# jersey_one = Jersey.new("blue", "Pup N Suds", player)
# # Jersey @color=>"blue" @sponsor=>"Pup N Suds", #Player @handle=>"duke"
# jersey_two = Jersey.new("black", "X Blades", player)
# jersey_anon = Jersey.new("", "", nil)
# p player.jerseys.count == 2
