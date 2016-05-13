class AddMonthlyRentToLeases < ActiveRecord::Migration
  def change
    add_column :leases, :monthly_rent, :integer
  end
end
