require 'rspec/expectations'

Given /a User has entered (.*)/ do |raw|
	@concoction = Concoction::Concoction.new raw
end

When /concoction parses it/ do
end

Then /the ingredient should be (.*)/ do |thing|
	@concoction.ingredient.should == thing
end

And /the units should be (.*)/ do |units|
	@concoction.units.should == units
end

And /the quantity should be (\d*\.\d*)/ do |quantity|
	@concoction.quantity.should == quantity.to_f
end

And /the raw should be (.*)/ do |raw|
	@concoction.raw.should == raw
end
