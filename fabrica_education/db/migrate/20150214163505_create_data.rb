class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.int :slice_id
      t.int :user_id
      t.string :name
      t.bin :origin
      t.string :slice
      t.timestamp :print_time
      t.boolean :delete_f

      t.timestamps
    end
  end
end
