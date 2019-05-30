class CreateHats < ActiveRecord::Migration[5.2]
  def change
    create_table :hats do |t|
      t.string :name
      t.string :color
      t.timestamps
    end
  end
end
