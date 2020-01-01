def my_method(greet)
  # yield でブロックの中身を評価
  "#{greet}, #{yield}"
end

# procを渡している
my_p = proc { "bill" }

# procをブロックに戻して渡している
p my_method("hello", &my_p)