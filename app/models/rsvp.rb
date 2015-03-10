class Rsvp < ActiveRecord::Base
  validates :name,
            :email,
            presence: true
end
