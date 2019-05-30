class CreatePens < ActiveRecord::Migration[5.2]
  def change
    create_table :pens do |t|
      t.string :type
      t.string :color
      t.references :student
    end
  end
end
