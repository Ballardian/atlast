class Place < ApplicationRecord
  has_many :posts
  has_many :users, through: :posts
  has_many :post_tags, through: :posts
  has_many :tags, through: :post_tags
  has_many :wishlist_items
  validates :name, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
