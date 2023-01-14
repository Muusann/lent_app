class RemoveTerminalsIdFromTerminals < ActiveRecord::Migration[6.0]
  def change
    remove_column :terminals, :terminals_id, :integer
  end
end
