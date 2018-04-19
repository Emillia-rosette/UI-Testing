require 'capybara/dsl'

class Signinpage
	include Capybara::DSL
# signin page URL
SIGNIN_PAGE_URL = 'https://account.bbc.com/signin'
USERNAME_INPUT = 'user-identifier-input'
PASSWORD_INPUT = 'password-input'
BUTTON_CLICK = 'submit-button'

 def fill_in_username(name)
 	fill_in(USERNAME_INPUT, :with => name)
 end

 def fill_in_password(password)
 	fill_in(PASSWORD_INPUT , :with => password)
 end
 def click_sign_in_button
 	find(BUTTON_CLICK).click_button
 end
 # def incorrect_password_text
 	
 # end
end