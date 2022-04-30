class AddApproveToArmrequests < ActiveRecord::Migration[6.1]
  def change
    add_column :armrequests, :approve, :string
  end
end
