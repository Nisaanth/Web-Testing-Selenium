require 'spec_helper'

describe Generator do 

  random_number = rand(2..10)
  before(:all) do 
    @postcode_array = Generator.new.postcodes.random_array(random_number)
  end

  it 'should return randomly generated postcodes between the range of 2 and 10' do 
    expect(@postcode_array.length).to eq random_number
  end

  it 'should return postcodes in an array' do
    expect(@postcode_array).to be_kind_of(Array)
  end

  it 'should return the individual postcodes as a string' do
    @postcode_array.each do |postcode|
      expect(postcode).to be_kind_of(String)
    end
  end

  it 'should return postcodes with no more than 8 characters long' do
    @postcode_array.each do |postcode|
      expect(postcode.length).to be_between(5,9)
    end
  end

end

