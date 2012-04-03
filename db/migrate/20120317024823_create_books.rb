class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :isbn
      t.decimal :price

      t.timestamps
    end
  end
end
