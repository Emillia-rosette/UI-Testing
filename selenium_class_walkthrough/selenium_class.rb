require 'selenium-webdriver'

# this is POM = Page Object Model
class SeleniumQaToolsForm

	# using couple of constance varaible

	PRACTICE_FORM_URL = 'http://toolsqa.com/automation-practice-form/'
	FIRST_NAME_FIELD_NAME ='firstname'
	LAST_NAME_FIELD_NAME = 'lastname'

	def initialize
		@chrome_driver = Selenium::WebDriver.for :chrome
	end
	def visit_practice_form
		@chrome_driver.get(PRACTICE_FORM_URL)
	end
	def input_firstname_field(text)
		@chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME).send_keys(text)
	end
	def get_first_name_text
		puts @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME)['value']
	end
	def get_last_name_text
		puts@chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME)['value']
	end

end
form = SeleniumQaToolsForm.new 
form.visit_practice_form
form.input_firstname_field("Emillia-rosette")
form.get_first_name_text
form.input_lastname_field("Nlandu")
form.get_last_name_text
