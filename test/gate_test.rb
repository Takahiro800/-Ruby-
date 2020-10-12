require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'

class GateTest < MiniTest::Test
  def test_gate
    umeda = Gate.new(:umeda)
    juso = Gate.new(:juso)
    ticket = Ticket.new(150)
    umeda.enter(ticket)
    # 「湯津城できる」という結果を期待しているので、juso.exit(ticket) の戻り値はtrueになるはず。
    # それを検証するために最後にassertメソッドで戻り値がtrueになることを検証している
    assert juso.exit(ticket)
  end
end