class Match < ActiveRecord::Base
  def game
    Game.find_by(id: game_id)
  end
end
