module Concotion
  class Concotion
	attr_accessor :ingredient, :units, :quantity

	def initialize()
		@ingredient = "flour"
		@units = "cups"
		@quantity = 1.0
	end
  end
end
