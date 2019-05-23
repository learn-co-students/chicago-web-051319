class CreateMice < ActiveRecord::Migration[5.2]
  def change
    create_table :mice do |t|
      t.string :model
      t.integer :dpi
    end
  end
end
