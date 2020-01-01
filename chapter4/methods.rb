class MyClass
  def initialize(value)
    @v = value
  end

  def my_method
    @v
  end
end

obj = MyClass.new(1)
# method :method_nameでメソッドオブジェクト
m = obj.method :my_method

# Method
p m.class

# 1
p m.call