class ChangeDateFormatInTenant < ActiveRecord::Migration
  def change
    change_column :tenants, :dob, :date
  end
end
