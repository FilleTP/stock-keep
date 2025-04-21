class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :price_cents, null: false, default: 0
      t.integer :quantity, null: false, default: 0
      t.string :sku, null: false

      t.references :store, null: false, foreign_key: true

      t.uuid :uuid, default: -> { "gen_random_uuid()" }, null: false

      t.timestamps
    end

    add_check_constraint :products, "price_cents >= 0", name: "price_cents_non_negative"
    add_index :products, :uuid, unique: true
  end
end
