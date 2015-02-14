class RemoveSliceFromData < ActiveRecord::Migration
  def change
    remove_column :data, :slice_id, :int
    remove_column :data, :origin, :bin
    remove_column :data, :slice, :string
    remove_column :data, :print_time, :timestamp
  end
end
