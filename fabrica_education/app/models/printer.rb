class Printer < ActiveRecord::Base
	has_many :jobs
	has_many :slicer_configs
end
