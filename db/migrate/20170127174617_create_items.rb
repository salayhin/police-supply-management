class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string      :name
      t.string      :image
      t.integer     :quantity
      t.integer     :used, :default => 0
      t.text        :description
      t.string      :status, :default => 'active'

      t.timestamps
    end
  end
end
