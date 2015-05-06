require 'date'
require_relative '../test_helper'
require_relative '../../lib/birthday_parser'

class TestBirthdayParser < Minitest::Test

  def test_parse_feb_29
    expected = Date.civil(2016,02,29)
    actual = BirthdayParser.parse("02/29")
    assert_equal actual, expected
  end

  def test_parse_yesterday
    expected = Date.civil(2015, 05,04)
    actual = BirthdayParser.parse("05/04")
    assert_equal actual, expected
  end

  def test_parse_today
    expected = Date.today
    actual = BirthdayParser.parse("05/05")
    assert_equal actual, expected
  end

  def test_parse_tomorrow
    expected = Date.civil(2015,05,06)
    actual= BirthdayParser.parse("05/06")
    assert_equal actual, expected
  end

  def test_parse_sept_31
    assert_nil BirthdayParser.parse("09/31")
  end


  def test_parse_backwards_date
    assert_nil BirthdayParser.parse("25/04")
  end


  def test_parse_non_birthday
    assert_nil BirthdayParser.parse("Anne")
  end


  def test_non_birthday
    assert_nil BirthdayParser.parse("")
  end


end
