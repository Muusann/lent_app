class Terminal < ApplicationRecord
  belongs_to :rent_infos
  with_options presence: true do
    validates :name
    validates :num
    validates :os
    validates :remark
    validates :place_id
  end
end
