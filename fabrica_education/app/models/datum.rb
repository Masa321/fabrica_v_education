class Datum < ActiveRecord::Base
	has_many :cam_data
	belongs_to :user

	has_attached_file :file
	validates_attachment_presence :file
	validates_attachment_content_type :file, :content_type => ['application/sla']

end
