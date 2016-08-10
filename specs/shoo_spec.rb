require ("minitest/autorun")
require ("minitest/rg")
require_relative('../models/shoes')

class Testshoe < Minitest::Test


  def setup()
    @shoe= shoe.new({"first_name" => "Tony", "last_name" => "Smith", "style" => "Croc", "quantity" => 2})
  end

  def test_first_name()
    assert_equal('Tony', @shoe.first_name())
  end

  def test_last_name()
    assert_equal('Smith', @shoe.last_name())
  end

  def test_pretty_name()
    assert_equal("Tony Smith", @shoe.pretty_name())
  end

  def test_style()
    assert_equal("Croc", @shoe.style())
  end

  def test_has_quantity()
    assert_equal(2,@shoe.quantity())
  end

def test_total()
  assert_equal(20,@shoe.total())
end


end