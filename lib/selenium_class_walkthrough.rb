require 'selenium-webdriver'
# This is a page object model
# we are building a class to model out the page
# We also need to test it now
class QaToolsForm
  # This is a page object
  PRACTICE_FORM_URL = 'https://www.toolsqa.com/automation-practice-form'
  FIRST_NAME_FIELD_NAME = 'firstname'
  LAST_NAME_FIELD_NAME = 'lastname'
  DATE_FIELD_ID = 'datepicker'
  SEX_FIELD_ID = 'sex-0'

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

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME).send_keys(text)
  end

  def input_lastname_field_value
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME)['value']
  end
  
  def input_date_field(text)
    @chrome_driver.find_element(:id, DATE_FIELD_ID).send_keys(text)
  end

  def input_date_field_value
    @chrome_driver.find_element(:id, DATE_FIELD_ID)['value']
  end

  def current_url
    @chrome_driver.current_url
  end

  def select_sex_field
    @chrome_driver.find_element(:id, SEX_FIELD_ID).setElementSelected()
  end
 
end

sleep 10
