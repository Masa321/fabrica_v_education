class Job < ActiveRecord::Base
	belongs_to :user
	belongs_to :cam_datum
	belongs_to :printer
end
