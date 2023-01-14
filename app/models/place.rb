class Place < ApplicationRecord
  has_many :terminals
  validates :name, presence: true, uniqueness: true
end
