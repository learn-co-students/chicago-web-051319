# chess = Game.create(name: "chess", year_created: 500, version: "untimed, surrenders allowed", min_duration: 0, max_duration: 1200)
# # GAME ID: 1
#
# checkers = Game.create(name: "checkers", year_created: -3000, version: "single kingings only", min_duration: 5, max_duration: 30)
# # GAME ID: 2
#
# war = Game.create(name: "war", year_created: 1350, version: "three cards facedown, no weapons at the table", min_duration: 10, max_duration: 40)
# # GAME ID: 3
#
# puts "The number of games in the database is now three? #{Game.all.count == 3}"
#
# duke = Player.create(name: "Duke", handle: "Stalwart Patton the Brave", age: 33, ranking: 9002)
# # Player ID: 1
#
# libby = Player.create(name: "Libby", handle: "Hermione DANGER", age: 30, ranking: 6)
# # Player ID: 2
#
# checker_match = Match.create(game_id: 2, player_one_id: 1, player_two_id: 2, winner_id: 2)
#
# chess_match = Match.create(game_id: 1, player_one_id: 1, player_two_id: 2, winner_id: 2)

duke = Player.find_by(id: 1)
puts "Has Duke played any matches?"
p duke.matches

puts "Does Match One know its game?"
match_one = Match.find_by(id: 1)
p match_one.game

puts "Has Duke played chess?"
p duke.games.map(&:name).include?("chess")
