class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.integer :user_id
      t.integer :hat_id
      t.integer :quantity
    end
  end
end
