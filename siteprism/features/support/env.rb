require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb'

BROWSERS = ENV['BROWSERS']
AMBIENTE = ENV['AMBIENTE'] 
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

World(PagesObjects)

Capybara.register_driver :selenium do |app|

  if BROWSERS.eql?('chrome')
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  
  elsif BROWSERS.eql?('chrome_headless')
    Capybara::Selenium::Driver.new(app, :browser => :chrome,
    desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
     'chromeOptions' => {'args' =>['--headless', 'disable-gpu']}
    )
  )
  elsif BROWSERS.eql?('firefox')
    Capybara::Selenium::Driver.new(app,browser: :firefox, marionette: true)

  elsif BROWSERS.eql?('firefox_headless')
    browser_options = Selenium::WebDriver::Firefox::Options.new(args: ['--headless'])
      Capybara::Selenium::Driver.new(
        app,
        browser: :firefox,
        options: browser_options
      )
  end
end
  

Capybara.configure do |config|
    #selenium   selenium_chrome selenium_chrome_healess
    config.default_driver = :selenium
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 5
end    