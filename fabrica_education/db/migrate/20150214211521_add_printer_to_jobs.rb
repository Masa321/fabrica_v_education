class AddPrinterToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :printer, :int
    add_column :jobs, :camdata_id, :int
  end
end
