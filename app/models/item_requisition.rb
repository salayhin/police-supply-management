class ItemRequisition < ApplicationRecord

  belongs_to :item
  belongs_to :requisition

  accepts_nested_attributes_for :item, :reject_if => proc { |attributes| attributes['quantity'].blank? }

end
