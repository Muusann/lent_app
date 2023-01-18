class RentInfo < ApplicationRecord
  with_options presence: true do
    belongs_to :user
    belongs_to :place
    belongs_to :terminal
  end
end
