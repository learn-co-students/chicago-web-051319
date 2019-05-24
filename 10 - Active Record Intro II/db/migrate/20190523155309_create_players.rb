class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :handle
      t.integer :age
      t.integer :ranking
    end
  end
end
