class Printer < ActiveRecord::Base
	has_many :jobs
	has_many :data
	belongs_to :slice_h, :class_name => 'SlicerConfig', :foreign_key => 'slice_h_id'
	belongs_to :slice_m, :class_name => 'SlicerConfig', :foreign_key => 'slice_m_id'
	belongs_to :slice_l, :class_name => 'SlicerConfig', :foreign_key => 'slice_l_id'
end
