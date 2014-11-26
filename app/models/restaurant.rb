class Restaurant < ActiveRecord::Base
  extend Enumerize
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  enumerize :category, in: [:chinese, :italian, :japanese, :french, :belgian]
end
