require 'selenium-webdriver'
require 'faker'
require_relative '../lib/selenium_class_walkthrough'
require_relative '../lib/randomGenerator/Generator'
require_relative '../lib/randomGenerator/services/RandomInput'

RSpec.configure do |config|
  config.formatter = :documentation
end