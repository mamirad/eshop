class Beholder < ApplicationRecord
  belongs_to :sale
   mount_uploader :beholderimg1, ProfileimgUploader
   mount_uploader :beholderimg2, ProfileimgUploader
end
