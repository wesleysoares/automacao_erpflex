require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |c|
    c.default_driver = :selenium_chrome
    c.app_host = 'http://www.new.erpflex.com.br'
end 