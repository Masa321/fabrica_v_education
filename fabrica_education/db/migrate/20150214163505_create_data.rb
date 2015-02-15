class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.integer :slice_id
      t.integer :user_id
      t.string :name
      t.binary :origin
      t.string :slice
      t.timestamp :print_time
      t.boolean :delete_f

      t.timestamps
    end
  end
end
