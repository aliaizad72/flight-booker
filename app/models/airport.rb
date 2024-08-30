class Airport < ApplicationRecord
  validates :code, presence: true, length: { maximum: 3 }
end
