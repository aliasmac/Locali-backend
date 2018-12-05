class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :content
      t.text :geofence
      t.integer :broadcast_id
      t.boolean :selected, default: false 
      
      t.timestamps
    end
  end
end
