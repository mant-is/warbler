class CreatePeeps < ActiveRecord::Migration[6.1]
  def change
    create_table :peeps do |t|
      t.text :chirp

      t.timestamps
    end
  end
end
