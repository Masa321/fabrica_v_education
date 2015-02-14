class AddCadToData < ActiveRecord::Migration
  def change
    add_column :data, :cad_data, :bin
  end
end
