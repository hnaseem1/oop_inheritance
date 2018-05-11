require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test
  def setup
    @instance = Multilinguist.new
    @local_language = 'en'
    @current_lang = 'en'
  end

  def test_to_check_the_local_language_of_a_country
    language_of_us = @instance.language_in('uk')
    assert_equal(language_of_us, @local_language)
  end

  def test_to_check_if_current_if_current_language_changes_when_called_travelled_to_method
    msg = @instance.say_in_local_language('Whats up')
    assert_equal(msg, 'Whats up')
  end
end
