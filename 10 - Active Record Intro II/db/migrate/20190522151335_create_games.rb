class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :year_created
      t.string :version
      t.integer :min_duration
      t.integer :max_duration

      t.timestamps
    end
  end
end
