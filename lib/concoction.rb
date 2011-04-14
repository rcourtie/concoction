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
		quantity_parts = []
		while parts.first =~ /[0-9\.\/]+/
			part = parts.shift
			if part =~/\//
				n, d =  part.split('/').map(&:to_f)
				quantity_parts << n/d
			else
				quantity_parts << part.to_f
			end
		end
		@quantity = quantity_parts.inject(0) {|sum,value| sum += value}
		@units = parts.shift.pluralize
		parts.shift
		@ingredient = parts.join " "
	end
  end
end
