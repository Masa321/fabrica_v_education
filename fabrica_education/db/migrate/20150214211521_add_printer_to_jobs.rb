class AddPrinterToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :printer, :integer
    add_column :jobs, :camdata_id, :integer
  end
end
