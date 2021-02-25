class AddUserIdToPeeps < ActiveRecord::Migration[6.1]
  def change
    add_reference :peeps, :user, null: false, foreign_key: true
  end
end
