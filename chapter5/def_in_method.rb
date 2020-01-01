class C
  def m1
    def m2; self; end
  end
end

class D < C;end

obj = D.new
p obj.m1
p obj.m2

p C.instance_methods(false)