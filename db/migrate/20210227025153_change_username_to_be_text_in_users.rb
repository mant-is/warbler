class ChangeUsernameToBeTextInUsers < ActiveRecord::Migration[6.1]
  def up
    change_column :users, :username, :text
  end

  def down
    change_column :users, :username, :string
  end

end
