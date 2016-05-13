class AddPaidRentToLeases < ActiveRecord::Migration
  def change
    add_column :leases, :paid_rent, :integer
  end
end
