class Item < ApplicationRecord

  has_many :item_requisitions, :dependent => :destroy
  has_many :items, :through => :item_requisitions

  mount_uploader :image, ItemImageUploader

  validates_presence_of :name, :quantity

end
