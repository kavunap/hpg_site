class Message < ApplicationRecord
    validates_presence_of :sender_names, :message
end
