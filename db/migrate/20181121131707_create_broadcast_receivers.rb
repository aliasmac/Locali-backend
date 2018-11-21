class CreateBroadcastReceivers < ActiveRecord::Migration[5.2]
  def change
    create_table :broadcast_receivers do |t|
      t.integer :receiver_id
      t.integer :broadcast_id

      t.timestamps
    end
  end
end
