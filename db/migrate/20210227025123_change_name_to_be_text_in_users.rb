class ChangeNameToBeTextInUsers < ActiveRecord::Migration[6.1]
  def up
    change_column :users, :name, :text
  end

  def down
    change_column :users, :name, :string
  end

end
