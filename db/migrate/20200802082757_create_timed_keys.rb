class CreateTimedKeys < ActiveRecord::Migration[6.0]
  def change
    create_table :timed_keys do |t|
      t.string :code
      t.date :expiration_date
      t.belongs_to :product, null: false, foreign_key: true
      t.string :key_owner

      t.timestamps
    end
  end
end
