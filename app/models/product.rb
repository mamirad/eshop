class Product < ApplicationRecord
	has_one :sale
	has_one :customer, through: :sale
mount_uploader :productimg, ProfileimgUploader


def self.exist_product_for_sale
Product.where(status:'available').count
end
def self.update_status(product_id)
	@temp=Product.find(product_id)
	@temp.status="saled"
	@temp.save
end
end
