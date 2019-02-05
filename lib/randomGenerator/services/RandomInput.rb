require 'faker'

class RandomInput
  include Faker

  def first_name
    Name.first_name
  end

  def last_name
    Name.last_name
  end

  def date
    Date.backward(10)
  end

end

test = RandomInput.new
p test.date