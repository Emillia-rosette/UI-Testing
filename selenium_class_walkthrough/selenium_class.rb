require 'selenium-webdriver'

# this is POM = Page Object Model
class SeleniumQaToolsForm

	# using couple of constance varaible

	PRACTICE_FORM_URL = 'http://toolsqa.com/automation-practice-form/'
	FIRST_NAME_FIELD_NAME ='firstname'
	LAST_NAME_FIELD_NAME = 'lastname'
	SEX_RADIO_FIELD ='sex-1'
	DATE_FIELD = 'datepicker'
	YEAR_EXPERIENCE_FIELD = 'expo-0'

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
	def input_lastname_field(text)
		@chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME).send_keys(text)
	end
	def get_last_name_text
		puts @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME)['value']
	end
	def input_sex_radio(sex)
		@chrome_driver.find_element(:id, SEX_RADIO_FIELD).click
		sleep 2
	end
	def get_sex_radio
		puts @chrome_driver.find_element(:id, SEX_RADIO_FIELD)['value = Female']
	end
	def input_datepicker(text)
		@chrome_driver.find_element(:id, DATE_FIELD).send_keys(text)
	end
	def get_date_text
		puts @chrome_driver.find_element(:id, DATE_FIELD)['value']
	end
	def input_year_experience(exp)
		@chrome_driver.find_element(:id, YEAR_EXPERIENCE_FIELD).click
	end
	def get_year_experience
		@chrome_driver.find_element(:id, YEAR_EXPERIENCE_FIELD)['value = 1']
	end
end
form = SeleniumQaToolsForm.new 
form.visit_practice_form
form.input_firstname_field("Emillia-rosette")
form.get_first_name_text
form.input_lastname_field("Nlandu")
form.get_last_name_text
form.input_sex_radio("Female")
form.get_sex_radio
form.input_datepicker("17/04/2018")
form.get_date_text
form.input_year_experience('expo-1')
form.get_year_experience

sleep 4