require_relative '../test_helper'

class TestCheers < Minitest::Test

  def test_happy_path
    shell_output = ""
    expected = ""
    IO.popen('./cheers', 'r+') do |pipe|
      expected << "hello, what's your name?\n"
      pipe.puts "Ed"
      expected << "Give me an.. E\n"
      expected << "Give me a... D\n"
      expected << "Ed's just GRAND!\n"
      expected << "Hey Ed, what's your birthday? (mm/dd)\n"
      pipe.puts "05/06"
      expected << "Awesome! Your birthday is in 1 day! Happy Birthday in advance!"
      pipe.close_write
      shell_output = pipe.read
    end
    assert_equal expected, shell_output
  end

  def test_no_input
    fail
  end

  def test_happy_path_with_birthday_in_future
    fail
  end


  def test_happy_path_with_birthday_in_future
    fail
  end

  def test_happy_path_with_recent_birthday
    fail
  end

  def test_happy_path_with_birthday_today
    fail
  end

  def test_bad_birthday_format
    fail
  end

end
