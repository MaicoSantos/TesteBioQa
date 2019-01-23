require 'rspec'
require 'capybara'
require 'cucumber'
require 'site_prism'
require 'capybara/cucumber'
require 'pry'
require 'faker'

    Capybara.javascript_driver = :selenium
    Capybara.register_driver :chrome do |app|
    driver = Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end
    
    Capybara.ignore_hidden_elements = false

    Capybara.configure do |config|
    config.default_driver = :chrome
    Capybara.page.driver.browser.manage.window.maximize
    end