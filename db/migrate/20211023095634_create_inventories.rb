class CreateInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.string :armtype
      t.string :quantity

      t.timestamps
    end
  end
end
