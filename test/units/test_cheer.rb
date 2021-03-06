require_relative '../test_helper'
require_relative '../../lib/cheer'

class TestCheer < Minitest::Test

  def test_happy_path_name
    actual = Cheer.for_person("Ed")
    expected = "Give me an.. E!\n" +
               "Give me a... D!\n" +
               "Ed's just GRAND!\n"
    assert_equal expected, actual
  end

  def test_name_with_spaces
    fail
  end

  def test_name_with_hyphens
    fail
  end
  
  def test_name_blank
    fail
  end

  def test_name_all_whitespace
    fail
  end

  def test_name_no_word_characters
    fail
  end
end
