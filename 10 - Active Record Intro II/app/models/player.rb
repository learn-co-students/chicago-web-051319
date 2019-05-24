class Player < ActiveRecord::Base
  def matches
    matches_as_player_one = Match.all.where(player_one_id: self.id).to_a
    matches_as_player_two = Match.all.where(player_two_id: self.id).to_a
    matches_as_player_one + matches_as_player_two
  end

  def games
    matches.map do |match|
      match.game
    end
  end
end
