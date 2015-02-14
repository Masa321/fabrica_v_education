class CreatePrinters < ActiveRecord::Migration
  def change
    create_table :printers do |t|
      t.int :condition
      t.string :name
      t.float :print_area_x
      t.float :print_area_y
      t.float :print_area_z
      t.string :printer_type
      t.int :slice_h
      t.int :slice_m
      t.int :slice_l
      t.bin :photo
      t.string :filament_color

      t.timestamps
    end
  end
end
