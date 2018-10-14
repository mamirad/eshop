class Customer < ApplicationRecord
	self.primary_key="cnic"
	has_many :sales, foreign_key: 'cnic'
	has_many :products, through: :sales


	mount_uploader :cnicimg1, ProfileimgUploader
	mount_uploader :cnicimg2, ProfileimgUploader
	mount_uploader :cusimg, ProfileimgUploader
end
