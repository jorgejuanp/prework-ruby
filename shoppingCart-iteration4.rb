
# author: jorge juan perales			
# date: september 2015					
# summary: Ruby exercise Shopping cart, iteration 4
####################################################

class ShoppingCart
	attr_reader :add_item
	def initialize
		@items = []
	end

	def add_item(item)
		@items.push(item)
	end

	def checkout
		puts "Items in shopping cart:"
		@items.each do |item|
			puts "#{item.name}, $#{item.price}"
		end

		@total_price = 0
		#add all the items' price
		@items.each do |item|
			@total_price += item.price
		end

		if @items.length > 5
			puts "Subtotal is $#{@total_price}"
			@total_price -= (@total_price/100)*10
			puts "Apply 10% discount: -$#{(@total_price/100)*10}"
		end

		puts "Total price is: $#{@total_price}"
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
orange_juice = Fruit.new("Orange juice", 10)
rice = Fruit.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum cleaner", 150)
anchovies = Fruit.new("Anchovies", 2)

#create josh's cart and put items
joshs_cart = ShoppingCart.new
joshs_cart.add_item(banana)
joshs_cart.add_item(vacuum_cleaner)
joshs_cart.add_item(anchovies)
joshs_cart.add_item(rice)
joshs_cart.add_item(vacuum_cleaner)
joshs_cart.add_item(rice)
joshs_cart.add_item(rice)


#procceed to checkout
joshs_cart.checkout