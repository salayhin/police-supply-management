class Requisition < ApplicationRecord

  belongs_to :user
  has_many :item_requisitions, :dependent => :destroy
  has_many :items, through: :item_requisitions

  accepts_nested_attributes_for :items
  accepts_nested_attributes_for :item_requisitions, :allow_destroy => true

end
