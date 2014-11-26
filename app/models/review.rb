class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :conten, presence: true
  validates :rating, presence: true
  validates :rating, format: { with: /\A[0-5]\z/, message: "only allows 0, 1, 2, 3, 4 or 5 !" }
end
