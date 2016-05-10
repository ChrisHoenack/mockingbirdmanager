class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.date :start_date
      t.date :end_date
      t.text :full_lease
      t.text :notes
      t.integer :tenant_id
      t.integer :apartment_id

      t.timestamps null: false
    end
  end
end
