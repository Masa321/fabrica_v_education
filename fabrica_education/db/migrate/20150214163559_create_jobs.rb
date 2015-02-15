class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.integer :datum_id
      t.integer :status
      t.timestamp :print_time
      t.integer :rate
      t.binary :photo

      t.timestamps
    end
  end
end
