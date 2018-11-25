class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :broadcasts 

  class BroadcastSerializer < ActiveModel::Serializer
    attributes :id, :name, :pin, :broadcaster_id, :messages 
    has_many :messages 

    class MessageSerializer < ActiveModel::Serializer
      attributes :id, :content, :geofence, :broadcast_id
    end

  end

end



# create_table "users", force: :cascade do |t|
#   t.string "username"
#   t.string "password_digest"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end



# class BroadcastSerializer < ActiveModel::Serializer
#   attributes :id, :name, :pin, :broadcaster_id 
#   has_many :messages 

#     class MessageSerializer < ActiveModel::Serializer
#       attributes :id, :content, :geofence, :broadcast_id
#     end

# end


# class PersonSerializer < ActiveModel::Serializer
#   attributes :id, :cats
#   def cats 
#     self.object.cats.map do |cat|
#       {name: cat.name, 
#        age: cat.age,
#        favoriteFood: cat.favorite_food}
#     end 
#   end 
# end