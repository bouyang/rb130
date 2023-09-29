require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class TransactionTest < Minitest::Test
  def test_prompt_for_payment_method
    transaction = Transaction.new(10)

    input = StringIO.new("10\n")
    output = StringIO.new
    transaction.prompt_for_payment(input: input, output: output)

    assert_equal(10, transaction.amount_paid)
  end
end