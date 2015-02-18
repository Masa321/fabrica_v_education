class Datum < ActiveRecord::Base
	has_many :cam_data
	belongs_to :user
end
