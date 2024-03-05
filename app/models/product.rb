class Product < ApplicationRecord
  has_many_attached :images
  
  def self.ransackable_associations(auth_object = nil)
    ["image_attachments", "image_blobs"]
  end
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "name", "price", "updated_at"]
  end
end
