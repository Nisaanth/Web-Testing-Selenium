require 'selenium-webdriver'
# This is a page object model
# we are building a class to model out the page
# We also need to test it now 
class QaToolsForm
  # This is a page object
  PRACTICE_FORM_URL = 'https://www.toolsqa.com/automation-practice-form'
  FIRST_NAME_FIELD_NAME = 'firstname'

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  # This method will load the page 
  def visit_practice_form 
    @chrome_driver.get(PRACTICE_FORM_URL)
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME).send_keys(text)
  end

  def input_firstname_field_value
    #This prints the value that you input into the terminal, there are two methods (one is commented out):
    # @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME).attribute('value')
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME)['value']
  end

  def current_url
    @chrome_driver.current_url
  end
  
end

sleep 5
