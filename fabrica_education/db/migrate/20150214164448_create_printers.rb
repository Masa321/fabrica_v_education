class CreatePrinters < ActiveRecord::Migration
  def change
    create_table :printers do |t|
      t.integer :condition
      t.string :name
      t.float :print_area_x
      t.float :print_area_y
      t.float :print_area_z
      t.string :printer_type
      t.integer :slice_h
      t.integer :slice_m
      t.integer :slice_l
      t.binary :photo
      t.string :filament_color

      t.timestamps
    end
  end
end
