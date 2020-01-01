class Loan
  def initialize(book)
    @book = book
    # @time = Time.now

    # Loan.newした場合、Time.nowになる
    @time = Loan.time_class.now
  end

  def self.time_class
    # @time_classのクラスインスタンス変数が定義されていればそれを返す
    # なければTimeを返す
    @time_class ||= Time
  end

  def to_s
    "#{@book} loaned on #{@time}"
  end
end

p Loan.new("onestop development").to_s

class FakeTime
  def self.now; 'Mon Apr 06 11:11'; end
end

require 'test/unit'

# unitテスト
class TestLoan < Test::Unit::TestCase
  def test_conversion_to_string
    
    # Loanのクラスインスタンス変数のtime_classにFakeTimeを入れている   
    Loan.instance_eval { @time_class = FakeTime }

    # initializeの中で@time_classはすでにあるのでFakeTime.nowが動く
    loan = Loan.new('test book')
    assert_equal 'test book loaned on Mon Apr 06 11:11', loan.to_s
  end
end
