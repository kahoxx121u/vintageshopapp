class Item < ApplicationRecord
  validates :item, presence: true
  validates :text, presence: true
  validates :price, presence: true
  belongs_to :admin
end
