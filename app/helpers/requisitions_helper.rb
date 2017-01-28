module RequisitionsHelper

  def all_items()
    Item.where("quantity > ?", 0)
  end
end
