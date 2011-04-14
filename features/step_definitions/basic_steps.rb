require 'rspec/expectations'

Given /a User has entered (.*)/ do |raw|
	@concoction = Concoction::Concoction.new raw
end

When /concoction parses it/ do
end

Then /the ingredient should be (.*)/ do |thing|
	thing.should == @concoction.ingredient
end

And /the units should be (.*)/ do |units|
	units.should == @concoction.units
end

And /the quantity should be (\d*\.\d*)/ do |quantity|
	quantity.to_f.should == @concoction.quantity
end

And /the raw should be (.*)/ do |raw|
	raw.should == @concoction.raw
end
