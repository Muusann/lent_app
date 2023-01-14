class RemovePlaceIdFromTerminals < ActiveRecord::Migration[6.0]
  def change
    remove_column :terminals, :place_id, :integer
  end
end
