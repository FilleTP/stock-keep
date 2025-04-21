class CreateStores < ActiveRecord::Migration[7.1]
  def change
    create_table :stores do |t|
      t.string :name, null: false

      t.uuid :uuid, default: -> { "gen_random_uuid()" }, null: false

      t.timestamps
    end
    
    add_index :stores, :uuid, unique: true
  end
end
