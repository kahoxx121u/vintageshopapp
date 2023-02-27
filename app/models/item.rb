class Item < ApplicationRecord
  validates :item, presence: true
  validates :text, presence: true
  validates :category_id, presence: true
  validates :price, presence: true
  belongs_to :admin
end
