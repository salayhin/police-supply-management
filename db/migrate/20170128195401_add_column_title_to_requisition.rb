class AddColumnTitleToRequisition < ActiveRecord::Migration[5.0]
  def change
    add_column :requisitions, :title, :string
  end
end
