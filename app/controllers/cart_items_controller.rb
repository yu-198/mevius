class CartItemsController < ApplicationController
	def index
		@cart_item = CartItem.all
	end
end
