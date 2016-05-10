class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :dob
      t.text :notes

      t.timestamps null: false
    end
  end
end
