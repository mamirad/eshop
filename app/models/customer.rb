class Customer < ApplicationRecord
	self.primary_key="cnic"
	mount_uploader :cnicimg1, ProfileimgUploader
	mount_uploader :cnicimg2, ProfileimgUploader
	mount_uploader :cusimg, ProfileimgUploader
end
