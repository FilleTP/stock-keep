class CreateUserStores < ActiveRecord::Migration[7.1]
  def change
    create_table :user_stores do |t|
      t.boolean :is_owner, null: false, default: false
      t.boolean :limited_access, null: false, default: false
      t.string :first_name, null: false
      t.string :last_name, null: false

      t.references :store, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.uuid :uuid, default: -> { "gen_random_uuid()" }, null: false

      t.timestamps
    end

    add_index :user_stores, :uuid, unique: true
  end
end
