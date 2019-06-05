class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.string :reflection
      t.integer :book_id
      t.integer :landmark_id
    end
  end
end
