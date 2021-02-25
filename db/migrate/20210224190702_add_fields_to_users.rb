class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :text
    add_column :users, :username, :text
    add_index :users, :username, unique: true
  end
end
