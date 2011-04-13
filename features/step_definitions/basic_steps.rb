require 'rspec/expectations'

Given /a User has entered (.*)/ do |raw|
	@concotion = Concotion::Concotion.new
end

When /concotion parses it/ do
end

Then /the ingredient should be (.*)/ do |thing|
	puts thing
	puts @concotion.ingredient
	thing.should == @concotion.ingredient
end

And /the units should be (.*)/ do |units|
	units.should == @concotion.units
end

And /the quantity should be (\d*\.\d*)/ do |quantity|
	quantity.to_f.should == @concotion.quantity
end
