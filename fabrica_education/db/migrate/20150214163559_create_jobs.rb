class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.int :user_id
      t.int :datum_id
      t.int :status
      t.timestamp :print_time
      t.int :rate
      t.bin :photo

      t.timestamps
    end
  end
end
