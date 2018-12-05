class User < ApplicationRecord
    has_secure_password
    has_many :broadcasts, class_name: 'Broadcast', foreign_key: 'broadcaster_id'
    has_many :outbound_messages, through: :broadcasts, :source => :broadcast
    has_many :broadcast_receivers
    has_many :subscriptions, through: :broadcast_receivers, :source => :broadcast
    has_many :message_receivers 
    has_many :notifications, through: :message_receivers, :source => :message

    validates :username, uniqueness: true
    
    
end

