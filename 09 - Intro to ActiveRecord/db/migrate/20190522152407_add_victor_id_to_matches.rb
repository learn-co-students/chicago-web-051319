class AddVictorIdToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :victor_id, :integer
  end
end
