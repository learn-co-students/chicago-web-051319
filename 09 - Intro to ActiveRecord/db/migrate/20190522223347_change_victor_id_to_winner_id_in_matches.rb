class ChangeVictorIdToWinnerIdInMatches < ActiveRecord::Migration[5.2]
  def change
    rename_column :matches, :victor_id, :winner_id
  end
end
