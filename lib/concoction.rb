module Concoction
  class Concoction
	attr_accessor :raw, :ingredient, :units, :quantity

	def initialize(raw)
		@raw = raw
		@ingredient = "flour"
		@units = "cups"
		@quantity = 1.0
	end
  end
end
