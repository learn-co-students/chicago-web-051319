class CreateLandmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :landmarks do |t|
      t.string :name
      t.string :location
      t.integer :max_capacity
    end
  end
end
