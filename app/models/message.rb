class Message < ActiveRecord::Base
    belongs_to :rsvp
    validates :content, length: {maximum: 140};
end
