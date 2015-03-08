class Guest < ActiveRecord::Base
  validates :name,
            :email,
            presence: true
end
