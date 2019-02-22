require 'spec_helper'

describe 'Random input generator' do 

  before(:all) do 
    @input_data = Generator.new.form_input
  end 

  context '' do

    it 'should ' do 
      expect(@input_data.first_name). to be_kind_of(String)
    end 

    it 'should ' do 
      expect(@input_data.last_name). to be_kind_of(String)
    end 

  end
end
