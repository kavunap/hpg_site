class Request < ApplicationRecord
    validates_presence_of :sender_name, :sender_phone, :card_name

end
