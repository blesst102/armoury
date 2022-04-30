class CreateArmrequests < ActiveRecord::Migration[6.1]
  def change
    create_table :armrequests do |t|
      t.references :personnel, null: false, foreign_key: true
      t.string :armtype
      t.references :arm, null: false, foreign_key: true
      t.string :return_status
      t.date :request_date
      t.date :return_date

      t.timestamps
    end
  end
end
