class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :synopsis
      t.decimal :average_note
      t.integer :average_age

      t.timestamps
    end
  end
end
