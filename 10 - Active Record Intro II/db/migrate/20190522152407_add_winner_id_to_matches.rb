class AddWinnerIdToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :winner_id, :integer
  end
end
