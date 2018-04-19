require 'spec_helper'

describe'testing the random form data service'do
	before (:all)do
	@data_check = GenerateData.new.generate_random
	end
	it'should return a random firstname is a string'do
	expect(@data_check.first_name_field).to be_a(String)
	end
end