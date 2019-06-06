class CreateAppearances < ActiveRecord::Migration[5.2]
  def change
    create_table :appearances do |t|
      t.integer :book_id
      # t.references :book
      t.integer :character_id
      t.integer :protagonist_score
    end
  end
end
