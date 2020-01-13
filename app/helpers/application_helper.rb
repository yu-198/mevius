module ApplicationHelper
	def addTax(price)
		tax_price = (price * 1.1).round
	end
end
