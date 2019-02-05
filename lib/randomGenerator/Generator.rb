require_relative './services/RandomPostcodes'
require_relative './services/RandomInput'

# superclass
class Generator
  
  def postcodes
    RandomPostcodes.new
  end

  def form_input
    RandomInput.new
  end

  
end