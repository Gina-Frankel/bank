# frozen_string_literal: true

class Transaction
  def initialize(credit: nil, debit: nil, balance: nil)
    @time = Time.now
    @credit = credit
    @debit = debit
    @balance = balance
  end

  def display
    "#{formatTime} || #{format(@credit)}|| #{format(@debit)}|| #{format(@balance)}"
  end

  private

  def format(item)
    "#{item}.00 " if item
  end

  def formatTime
    @time.strftime('%d/%m/%Y')
  end
end
