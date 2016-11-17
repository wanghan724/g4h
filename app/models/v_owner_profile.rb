class VOwnerProfile < ApplicationRecord
  belongs_to :user
  has_many :listing_profiles
end
