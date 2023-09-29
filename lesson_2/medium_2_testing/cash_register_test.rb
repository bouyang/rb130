require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test

  # def setup
  #   @register = CashRegister.new(100)
  #   @transaction = Transaction.new(1)
  #   @transaction.prompt_for_payment
  # end

  def test_accept_money
    register = CashRegister.new(100)
    transaction = Transaction.new(1)
    transaction.amount_paid = 1

    register.accept_money(transaction)

    assert_equal(101, register.total_money)
  end

  def test_change
    register = CashRegister.new(100)
    transaction = Transaction.new(1)
    transaction.amount_paid = 10

    assert_equal(9, register.change(transaction))
  end

  def test_give_receipt
    register = CashRegister.new(100)
    transaction = Transaction.new(1)
    transaction.amount_paid = 10

    assert_output("You've paid $1.\n") { register.give_receipt(transaction) }
  end
end