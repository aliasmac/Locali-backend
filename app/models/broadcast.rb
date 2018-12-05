class Broadcast < ApplicationRecord
   
    belongs_to :broadcaster, :class_name => 'User'
    has_many :messages
    has_many :broadcast_receivers
    has_many :users, through: :broadcast_receivers

    validates :name, uniqueness: true
    

    
end


# def available
#     Reservation.where(listing_id: listing.id).where.not(id: id).each do |r|
#       booked_dates = r.check_in..r.check_out
#       if booked_dates === check_in || booked_dates === check_out
#         errors.add(:guest_id, "Sorry, this place isn't available during your requested dates.")
#       end
#     end
#   end

#   def guest_and_host_not_the_same
#     if guest_id == listing.host_id
#       errors.add(:guest_id, "You can't book your own apartment.")
#     end
#   end

#   def check_out_after_check_in
#     if check_out && check_in && check_out <= check_in
#       errors.add(:guest_id, "Your check-out date needs to be after your check-in.")
#     end
#   end