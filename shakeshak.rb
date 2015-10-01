#########################################
# author: jorge juan perales			#
# date: september 2015					#
# summary: Ruby exercise Shake Shack	#
#########################################

class Shakeshop
	attr_reader :milkshakes_list
	def initialize
		@chekout_price
		@milkshakes_list = []
	end

	def add_milkshake(milkshake)
		@milkshakes_list.push(milkshake)
	end

	def checkout
		puts "You got:"
		@milkshakes_list.each do |milkshake|
			puts "#{milkshake.name} milkshake, $#{milkshake.price_of_milkshake}"
		end

		@total_price = 0
		#add all the milkshakes' price
		@milkshakes_list.each do |milkshake|
			@total_price += milkshake.price_of_milkshake
		end
		@total_price
	end
end


class Milkshake
	attr_reader :price_of_milkshake, :ingredients, :name
	def initialize(name)
		@base_price = 3 #instance variable
		@ingredients = []
		@name = name
	end

	def add_ingredient (ingredient)
		@ingredients.push(ingredient)
	end

	def price_of_milkshake
		@total_price_of_milkshake = @base_price
		#add each ingredient's price to our total
		@ingredients.each do |ingredient|
			@total_price_of_milkshake += ingredient.price
		end
		#return our total price to whoever called for it
		@total_price_of_milkshake
	end
end

class Ingredient
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
		@price = price
	end
end


#create ingredients
chocolate = Ingredient.new("Chocolate", 1.75)
banana = Ingredient.new("Banana", 1)
orange = Ingredient.new("Orange", 1.5)
carrot = Ingredient.new("Carrot", 1.15)
lemon = Ingredient.new("Lemon", 1)

#create the milshakes with their ingredients
bananate = Milkshake.new("Bananate")
	bananate.add_ingredient(banana)
	bananate.add_ingredient(chocolate)
citrus = Milkshake.new("Citrus")
	citrus.add_ingredient(orange)
	citrus.add_ingredient(carrot)
	citrus.add_ingredient(lemon)

#create the shop
shakeshop = Shakeshop.new

#add milkshakes to shakeshop's list
shakeshop.add_milkshake(bananate)
shakeshop.add_milkshake(citrus)

#checkout
puts "Total price is $#{shakeshop.checkout}"
