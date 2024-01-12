class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.integer :code
      t.string :name
      t.float :price
      t.integer :quantity
      t.string :category

      t.timestamps
    end
  end
end
