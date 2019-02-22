require 'spec_helper'

describe 'testing the demo automation form' do 

  before(:all) do 
    # this is going to refer to our class with the methods in it
    @driver = QaToolsForm.new
    @driver.visit_practice_form
    @url = 'https://www.toolsqa.com/automation-practice-form'
    @first_name = Generator.new.form_input.first_name
    @last_name = Generator.new.form_input.last_name
    @date = Generator.new.form_input.date
  end

  context 'testing the positive paths for the form' do 

    it 'should land on the registration demo form page' do 
      expect(@driver.current_url).to eq @url
    end 

    it 'should accept a first name' do
      @driver.input_firstname_field(@first_name)
      expect(@driver.input_firstname_field_value).to be_a(String)
    end

    it 'should accept a last name' do
      @driver.input_lastname_field(@last_name)
      expect(@driver.input_lastname_field_value).to be_a(String)
    end

    it 'should accept a date' do 
      @driver.input_date_field(@date)
      expect(@driver.input_date_field_value).to be_a(String)
    end

  end

end 

sleep 5
