require 'spec_helper'

describe 'Incorrect user details produces valid error'do 
context'It should respond with the correct error when incorrect details are input'do

	it'should produce an error when inputting an incorrect password to a avalid account'do
    	@bbc_site = Bbc_site.new 
    	@bbc_site.bbc_homepage.visit_home_page
    	@bbc_site.bbc_homepage.click_sign_in_link
    	@bbc_site.bbc_signin.fill_in_username('dszfxdgdfgdf')
    	@bbc_site.bbc_signin.fill_in_password('safsezddrfcdxc5')
    	@bbc_site.bbc_signin.click_sign_in_button
    	expect(@bbc_site.bbc_sign_in_page.incorrect_password_text).to eq 'Sorry, we can not find an account with that username.
    	If you are over 13, try your email address instead or get help here.' 
    	sleep 20
    end 
end	
end