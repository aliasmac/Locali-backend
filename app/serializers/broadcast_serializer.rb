class BroadcastSerializer < ActiveModel::Serializer
  attributes :id, :name, :pin, :broadcaster_id, :saved 
  has_many :messages 

    class MessageSerializer < ActiveModel::Serializer
      attributes :id, :content, :geofence, :broadcast_id
    end

end



# t.string "content"
# t.text "geofence"
# t.integer "broadcast_id"