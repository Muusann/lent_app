class CreateTerminals < ActiveRecord::Migration[6.0]
  def change
    create_table :terminals do |t|
      t.references :places, foreign_key: true
      t.references :terminals, foreign_key: true

      t.string :name
      t.integer :num
      t.string :os
      t.string :remark
      t.integer :place_id

      t.timestamps
    end
  end
end
