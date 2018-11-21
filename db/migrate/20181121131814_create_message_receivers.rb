class CreateMessageReceivers < ActiveRecord::Migration[5.2]
  def change
    create_table :message_receivers do |t|
      t.integer :receiver_id
      t.integer :message_id

      t.timestamps
    end
  end
end
