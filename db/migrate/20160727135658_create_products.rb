class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.belongs_to :category, index: true, foreign_key: true
      t.string :name
      t.integer :price
      t.text :description
      # t.attachment :image

      t.timestamps null: false
    end
  end
end
