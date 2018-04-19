require 'spec_helper'

describe 'testing the demoqa registration page' do 

	before (:all) do 
		@driver = SeleniumDemoReg.new 
		@driver.access_registration_form
		@wait = Selenium::WebDriver::Wait.new(timeout: 10)

    @faker_data = GenerateData.new.generate_random
    @firstname_fake = @faker_data.first_name_field
    @last_name = @faker_data.last_name_field
    @number_fake =@faker_data.random_phone_number
	end

	context'positive paths for the registration form and register' do
	it'should land on the registration page' do
		expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
	end

	it'should accept a firstname'do
		@driver.first_name_field_displayed
		@driver.set_first_name_field(@firstname_fake)
		expect(@driver.get_first_name_field_value).to eq @firstname_fake
	end

	it'should accept a lastname'do
		@driver.last_name_field_displayed
		@driver.set_last_name_field(@last_name)
		expect(@driver.get_last_name_field_value).to eq @last_name
	end

	it 'should accept a marital status selection of Single, Married, or Divorced' do
      	@driver.select_marital_option('Single')
      	@driver.select_marital_option('Married')
      	@driver.select_marital_option('Divorced')
      	# expect(@driver.select_marital_option).to be
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      	@driver.select_hobby_option('Dance')
      	@driver.select_hobby_option('Reading')
      	@driver.select_hobby_option('Cricket')
    end
    it 'should have a country default of Afghanistan' do
    	expect(@driver.get_selected_country).to eq'Afghanistan'
    end

    it 'accept a new DOB' do
    	@driver.dob_day_list_select('22')
    	@driver.dob_month_list_select('April')
    	@driver.dob_year_list_select('1991')
    end

    it 'should accept a new country value' do
      	@driver.country_dropdown_list_select('Congo')
      	# expect(@driver.get_selected_country).to eq'Cogno'
    end

    it 'should accept a valid phone number' do
    	 @driver.set_phone_number_field(@number_fake)
    	 expect(@driver.get_phone_number_field_value.length).to eq 11
    	 expect(@driver.get_phone_number_field_value).to eq @number_fake
    end

    it 'should accept a username' do
      	@driver.set_user_name_field('rosie1')
      	expect(@driver.get_user_name_field_value).to eq'rosie1'
    end
    it'should accept email'do
		@driver.set_email_field('emillianlandu@gmail.fr')
		expect(@driver.get_email_field_value).to eq 'emillianlandu@gmail.fr'
	  end

    it 'should accept a about yourself text' do
    	@driver.set_about_yourself_field('This is me blahlablaabab')
    	expect(@driver.get_about_yourself_value).to eq'This is me blahlablaabab'
    end

    it 'should accept a password' do
      	@driver.set_password_field('emillia22')
      	expect(@driver.get_password_value).to eq 'emillia22'
    end

    it 'should accept a password confirmation' do
      	@driver.set_confirmation_password_field('emillia22')
      	expect(@driver.get_confirmation_password_value).to eq 'emillia22'
      	expect(@driver.get_confirmation_password_value).to eq @driver.get_password_value
    end

    it 'should register successfully' do
      	@driver.click_submit
      	@wait
      	@driver.check_registration_successful
    end

   end
end