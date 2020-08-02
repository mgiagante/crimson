class CreateConsumableKeys < ActiveRecord::Migration[6.0]
  def change
    create_table :consumable_keys do |t|
      t.string :code
      t.integer :uses_left
      t.belongs_to :product, null: false, foreign_key: true
      t.string :key_owner

      t.timestamps
    end
  end
end
