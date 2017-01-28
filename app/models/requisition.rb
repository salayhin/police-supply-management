class Requisition < ApplicationRecord

  belongs_to :user
  has_many :item_requisitions, :dependent => :destroy
  has_many :items, through: :item_requisitions

  validates_presence_of :title, :station_id

  # attr_accessor :item_requisitions_attributes

  accepts_nested_attributes_for :items
  accepts_nested_attributes_for :item_requisitions, :reject_if => proc { |attributes| attributes['quantity'].blank? }, :allow_destroy => true

end
