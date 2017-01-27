class Item < ApplicationRecord

  mount_uploader :image, ItemImageUploader

  validates_presence_of :name, :quantity

end
