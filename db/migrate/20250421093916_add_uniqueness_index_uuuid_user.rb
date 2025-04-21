class AddUniquenessIndexUuuidUser < ActiveRecord::Migration[7.1]
  def change
    remove_index :users, :uuid
    add_index :users, :uuid, unique: true
  end
end
