def double(callable_object)
  callable_object.call * 2
end

l = lambda{
  return 10
}

# 20
p double(l)

def another_double
  proc_obj = Proc.new{ return 10 }
  
  puts proc_obj
  # #<Proc:0x00007ffff30a9f10@proc_vs_lambda.rb:13>

  # ここでスコープを抜けている
  result = proc_obj.call
  return result * 2
end

# 10
p another_double
p "after def"
