class RemoveSliceFromData < ActiveRecord::Migration
  def change
    remove_column :data, :slice_id, :integer
    remove_column :data, :origin, :binary
    remove_column :data, :slice, :string
    remove_column :data, :print_time, :timestamp
  end
end
