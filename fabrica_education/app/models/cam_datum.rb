class CamDatum < ActiveRecord::Base
	has_many :jobs
	belongs_to :datum
end
