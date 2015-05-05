require_relative 'helper'

class TestBirthdayParser < Minitest::Unit::TestCase

  def test_zero_arguments_prints_help_message
    output = `./cheers`
    expected = "I can't cheer for nothing!"
    assert_equal expected, output
  end
end
