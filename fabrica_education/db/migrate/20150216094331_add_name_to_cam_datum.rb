class AddNameToCamDatum < ActiveRecord::Migration
  def change
    add_column :cam_data, :name, :string
  end
end
