class CreateBroadcasts < ActiveRecord::Migration[5.2]
  def change
    create_table :broadcasts do |t|
      t.string :name
      t.integer :pin
      t.integer :broadcaster_id
    
      t.timestamps
    end
  end
end
