class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.references :student
      t.references :textbook
      t.timestamps
    end
  end
end
