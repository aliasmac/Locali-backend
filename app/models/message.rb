class Message < ApplicationRecord
    belongs_to :broadcast
    # belongs_to :user :through :broadcast

    has_many :message_receivers
    has_many :users, through: :message_receiver
    
end
