require "Capybara"

# register driver with capybara
Capybara.register_driver :chrome do |app|
 Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

session = Capybara::Session.new(:chrome)

session.visit('http://toolsqa.com/automation-practice-form/')

session.fill_in('firstname', with: 'emillia')
session.fill_in('lastname', with: 'nlandu')
session.fill_in('datepicker', with: '18/04/2018')

# radio buttons
session.choose('sex-0')
session.choose('sex-1')
session.choose('exp-1')
session.check('profession-1') #for check boxes
session.check('tool-0')
session.select('Europe', from: 'continents')
session.select('Browser Commands', from: 'selenium_commands')
session.click_button('submit')

session.find(:css, '#NextedTest')
session.find_button('Button')
session.find_link('Partial Link Test').text
# dropdown selection
# find(:select, from, options).find(:option, value, options).select_option 

sleep 4

