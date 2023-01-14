class RentInfo < ApplicationRecord
  belongs_to :user
  belongs_to :place
  belongs_to :terminal
end
