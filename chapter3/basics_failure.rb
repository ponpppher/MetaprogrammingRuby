def a_method(a, b)
  return yield(a, b) if block_given?
  'no block given'
  # a + yield(a, b)
end

# ブロックはa_methodに渡され、yieldで呼び出される
# 10
p a_method(1, 2){ |x, y| (x + y) * 3}

# no block given
p a_method(1, 2)