class CreateWontons < ActiveRecord::Migration
  def change
    create_table :wontons do |t|
      t.string :title
      t.text :copy
      t.integer :price

      t.timestamps null: false
    end
  end
end
