
# author: jorge juan perales			
# date: september 2015					
# summary: Ruby exercise Shopping cart, iteration 2
####################################################

class ShoppingCart
	attr_reader :add_item
	def initialize
		@items = []
	end

	def add_item(item)
		@items.push(item)
	end
end

class Item
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
		@regular_price = price
	end
end

class Fruit < Item
	def price
		@total_price = @regular_price
		if Time.now.strftime("%A").downcase == "saturday" || Time.now.strftime("%A").downcase == "sunday"
			@total_price -= (@regular_price/100)*10
		end
		@total_price
	end
end

class Houseware < Item
	def price
		@total_price = @regular_price
		if @regular_price > 100
			@total_price -= (@regular_price/100)*5
		end
		@total_price
	end
end

#create items for the shop
banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum cleaner", 150)
anchovies = Item.new("Anchovies", 2)

#create josh's cart and put items
joshs_cart = ShoppingCart.new
joshs_cart.add_item(banana)
joshs_cart.add_item(vacuum_cleaner)








