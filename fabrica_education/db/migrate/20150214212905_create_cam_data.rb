class CreateCamData < ActiveRecord::Migration
  def change
    create_table :cam_data do |t|
      t.integer :datum_id
      t.string :path_data
      t.integer :slicer_id
      t.timestamp :print_time

      t.timestamps
    end
  end
end
