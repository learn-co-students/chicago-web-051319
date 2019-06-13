class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.string :name
      # t.integer :user_id
      t.references :user
      t.string :condition
    end
  end
end
