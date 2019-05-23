require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |c|
    c.default_driver = :selenium_chrome
end 