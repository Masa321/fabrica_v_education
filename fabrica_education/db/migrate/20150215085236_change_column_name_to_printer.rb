class ChangeColumnNameToPrinter < ActiveRecord::Migration
  def change
    change_table :printers do |t|
      t.rename :slice_h, :slice_h_id
      t.rename :slice_m, :slice_m_id
      t.rename :slice_l, :slice_l_id
    end
  end
end
