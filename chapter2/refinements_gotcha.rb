class MyClass
  def my_method
    "original my method"
  end

  def another_method
    my_method
  end
end

module MyClassRefinements
  refine MyClass do
    def my_method
      "refined my_method"
    end
  end
end

class CallRef
  def callmethod
    using MyClassRefinements
    MyClass.new.my_method
  end
end

# refinementを使用
using MyClassRefinements

# "refined my_method"
p MyClass.new.my_method

# refineで書き換えたmy_methodを呼びだすフックメソッドだが、
# オリジナルが表示される
# "original my method"
p MyClass.new.another_method

# undefined method `using' for #<CallRef:0x00007fffea3314d0> (NoMethodError)
# usingがNomethodエラーとなる
# p CallRef.new.callmethod