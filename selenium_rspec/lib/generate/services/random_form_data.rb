require 'faker'

class RandomData

include Faker 
	def first_name_field
		Name.first_name
	end
	def last_name_field
		Name.last_name
	end
	def random_phone_number
		num = Number.number(10)
		'0' + num 
	end
end
# @data = RandomData.new 
# puts @data.first_name_field
# puts @data.last_name_field
# puts @data.random_phone_number