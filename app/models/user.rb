class User < ApplicationRecord
  has_many :rent_infos
  with_options presence: true do
    validates :name
    validates :belong
  end
end
