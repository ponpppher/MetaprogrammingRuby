def math(a, b)
  # &operatonをyeildで実行する
  yield(a, b)
end

# &operationでブロックを受け取りmathに渡す
# &はプロックに変換するメソッド？修飾子?
def do_math(a, b, &operation)
  # &を外すとただのproc
  p operation

  math(a, b, &operation)
end

p do_math(2, 3){ |x, y| x * y}
