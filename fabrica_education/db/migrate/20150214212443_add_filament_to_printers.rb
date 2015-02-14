class AddFilamentToPrinters < ActiveRecord::Migration
  def change
    add_column :printers, :filament_type, :string
  end
end
