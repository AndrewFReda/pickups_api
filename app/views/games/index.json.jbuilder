json.games @games.each do |game|
              json.id game.id
              json.sport game.sport
              json.location game.location
              json.num_players game.num_players
              json.admin_id game.admin_id
              json.when game.when
            end