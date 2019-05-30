class AddCreatorIdToHats < ActiveRecord::Migration[5.2]
  def change
    add_column :hats, :creator_id, :integer
  end
end
