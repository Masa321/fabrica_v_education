class RemoveDatumFromJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :datum_id, :integer
  end
end
