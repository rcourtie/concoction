require 'active_support/inflector'

module Concoction
  class Concoction
	attr_accessor :raw, :ingredient, :units, :quantity

	def initialize(raw)
		@raw = raw
		self.parse(raw)
	end

	def parse(raw)
		parts = raw.split
		@quantity = parts.shift.to_f
		@units = parts.shift.pluralize
		parts.shift
		@ingredient = parts.join " "
	end
  end
end
