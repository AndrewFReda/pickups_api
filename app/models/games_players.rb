class GamesPlayers < ActiveRecord::Base
  t.belongs_to :game
  t.belongs_to :player
end
