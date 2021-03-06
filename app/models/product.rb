class Product < ApplicationRecord
	has_many :ordered_items, dependent: :destroy
	has_many :cart_items, dependent: :destroy
	belongs_to :genre
	attachment :image

	scope :active, -> {where(is_stopped: false)}
end
