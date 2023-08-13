class Wish < ApplicationRecord
  validates :writer,  presence: true, length: { maximum: 25 }
  validates :context, presence: true, length: { maximum: 100 }
end
