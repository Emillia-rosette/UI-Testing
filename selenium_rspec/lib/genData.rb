require 'faker'
require_relative 'generate/services/random_form_data'
require_relative '../genData'

class GenerateData

	def generate_random
		RandomData.new
	end
end


