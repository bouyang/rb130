require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'text'

class TextTest < Minitest::Test
  def setup
    @file = File.open('/Users/ouyang/Documents/Launch School/RB130/lesson_2/medium_2_testing/sample_text.txt')
  end

  def test_swap
    first_line = Text.new(@file.readline)
    new_line = first_line.swap('a', 'e')
    assert_equal("Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.\n", new_line)
  end

  def test_word_count
    full_text = Text.new(@file.read)
    assert_equal(72, full_text.word_count)
  end

  def teardown
    @file.close
    puts "File has been closed: #{@file.closed?}"
  end
end