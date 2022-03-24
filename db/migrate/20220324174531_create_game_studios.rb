class CreateGameStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :game_studios do |t|
      t.string :name
      t.boolean :still_active
      t.integer :game_count

      t.timestamps
    end
  end
end
