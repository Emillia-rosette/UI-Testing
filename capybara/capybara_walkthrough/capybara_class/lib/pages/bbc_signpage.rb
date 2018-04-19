require 'capybara'

class Signinpage
include Capybara::DSL

	USERNAME_INPUT = 'user-identifier-input'
	PASSWORD_INPUT = 'password-input'
	BUTTON_CLICK = 'submit-button'
	ERROR_MESSAGE = 'form-message-username'
	GENERAL_MESSAGE_ERROR = 'form-message-general'
	PASSWORD_ERROR_MESSAGE = 'form-message-password'

	def fill_in_username(username)
	 fill_in(USERNAME_INPUT, :with => username)
	end
	def fill_in_password(password)
	 fill_in(PASSWORD_INPUT , :with => password)
	end

	def click_sign_in_button
	 click_button(BUTTON_CLICK)
	end

	def incorrect_password_text
		find(:id, ERROR_MESSAGE).text
	end

	def check_error_messgae
		find(:id, GENERAL_MESSAGE_ERROR).text
	end
	def check_passowrd_message
		find(:id, PASSWORD_ERROR_MESSAGE).text
	end
end