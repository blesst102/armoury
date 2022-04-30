class CreateShipments < ActiveRecord::Migration[6.1]
  def change
    create_table :shipments do |t|
      t.string :company
      t.string :container_name
      t.string :container_description
      t.time :departure
      t.time :arrival

      t.timestamps
    end
  end
end
