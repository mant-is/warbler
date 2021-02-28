class ChangeEncryptedPasswordToBeTextInUsers < ActiveRecord::Migration[6.1]
  def up
    change_column :users, :encrypted_password, :text
  end

  def down
    change_column :users, :encrypted_password, :string
  end

end
