class AddDefaultsToLeases < ActiveRecord::Migration
  def change
    change_column :leases, :start_date, :date, :default => "2016-01-01"
    change_column :leases, :end_date, :date, :default => "2017-01-01"
    change_column :leases, :full_lease, :text, :default => ""
    change_column :leases, :notes, :text, :default => ""
    change_column :leases, :monthly_rent, :integer, :default => 749
    change_column :leases, :paid_rent, :integer, :default => 0
  end
end
