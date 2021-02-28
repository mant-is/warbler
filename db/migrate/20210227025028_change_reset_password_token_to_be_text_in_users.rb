class ChangeResetPasswordTokenToBeTextInUsers < ActiveRecord::Migration[6.1]
  def up
    change_column :users, :reset_password_token, :text
  end

  def down
    change_column :users, :reset_password_token, :string
  end

end
