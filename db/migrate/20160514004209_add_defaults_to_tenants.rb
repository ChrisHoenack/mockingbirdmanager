class AddDefaultsToTenants < ActiveRecord::Migration
  def change
    change_column :tenants, :first_name, :string, :default => ""
    change_column :tenants, :last_name, :string, :default => ""
    change_column :tenants, :dob, :date, :default => "1990-01-01"
    change_column :tenants, :notes, :text, :default => ""
  end
end
