class MyClass
  def testing_self
    # selfのインスタンス変数
    @var = 10
    
    # self.my_methodと同じ
    my_method
    self
  end

  def my_method
    @var = @var + 1
  end
end

obj = MyClass.new

# #<MyClass:0x00007fffe95d6448 @var=11>
p obj.testing_self

# mainは命名エラーになる
# classは定数を定義するのでmainは本来指定しない
class Main
  self
end

obj  = Main.new
p obj