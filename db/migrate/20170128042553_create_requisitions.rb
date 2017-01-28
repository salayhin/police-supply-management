class CreateRequisitions < ActiveRecord::Migration[5.0]
  def change
    create_table :requisitions do |t|
      t.integer       :station_id
      t.integer       :user_id
      t.text          :description
      t.string        :status, :default => 'pending'

      t.timestamps
    end
  end
end
