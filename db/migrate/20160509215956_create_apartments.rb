class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :building
      t.string :unit
      t.string :paint_scheme
      t.string :kitchen_counter
      t.string :bathroom_sink
      t.string :refrigerator_type
      t.string :ac_filter
      t.date :ac_maint
      t.date :refrigerator_maint
      t.text :notes

      t.timestamps null: false
    end
  end
end
