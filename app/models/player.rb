class Player < ActiveRecord::Base
  has_and_belongs_to_many :games, -> { uniq }
end
