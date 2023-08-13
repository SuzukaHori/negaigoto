class Wish < ApplicationRecord
  validates :writer,  presence: true
  validates :context, presence: true
end
