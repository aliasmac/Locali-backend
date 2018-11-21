class Broadcast < ApplicationRecord
   
    belongs_to :broadcaster, :class_name => 'User'
    has_many :messages

    has_many :broadcast_receivers
    has_many :users, through: :broadcast_receivers
    
end


