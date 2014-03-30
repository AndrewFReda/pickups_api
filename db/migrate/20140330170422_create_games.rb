class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :sport
      t.string :location
      t.integer :game_size
      t.integer :admin_id
      t.datetime :when

      t.timestamps
    end
  end
end
