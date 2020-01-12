class Order < ApplicationRecord
	has_many :ordered_items :dependent: :destroy
	belongs_to :user
end
