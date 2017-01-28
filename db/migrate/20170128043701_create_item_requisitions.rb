class CreateItemRequisitions < ActiveRecord::Migration[5.0]
  def change
    create_table :item_requisitions do |t|
      t.integer       :item_id
      t.integer       :requisition_id
      t.integer       :quantity

      t.timestamps
    end
  end
end
