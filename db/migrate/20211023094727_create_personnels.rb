class CreatePersonnels < ActiveRecord::Migration[6.1]
  def change
    create_table :personnels do |t|
      t.string :svc_number
      t.string :rank
      t.string :name
      t.string :gender
      t.date :dob
      t.date :commission_date
      t.date :senioriry_date
      t.string :unit
      t.string :level_work

      t.timestamps
    end
  end
end
