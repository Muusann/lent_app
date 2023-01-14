class Terminal < ApplicationRecord
  belongs_to :rent_infos
  with_options presence: true do
    validates :name, uniqueness: true
    validates :num, uniqueness: true
    validates :os
    validates :remark
    validates :places_id
  end
end
