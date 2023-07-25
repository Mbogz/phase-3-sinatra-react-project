class CreateProduct < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.references :order,null:false,foreign_key: true
      t.string :name
      t.integer :quantity
      t.decimal :price
      t.timestamps
    end
  end
end
