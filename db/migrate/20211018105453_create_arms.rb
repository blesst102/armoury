class CreateArms < ActiveRecord::Migration[6.1]
  def change
    create_table :arms do |t|
      t.string :srlnum
      t.string :armname
      t.string :armtype
      t.integer :quantity
      t.string :serviceability

      t.timestamps
    end
  end
end
