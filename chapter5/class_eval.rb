def add_method_to(a_class)

  # 外から変数を入れるのに@@でクラス変数に入れる
  @@di_val = "oouhou"

  # a_classにカレントクラスを変更し、
  # ブロックの中でメソッドを定義している
  a_class.class_eval do
    def m; 'Hello'; end

    # 外で定義したクラス変数でカレントクラスが変わっても
    # 中に変数を入れれる
    def di_m; @@di_val; end
  end
end

add_method_to String
p "ab".m
p "ab".di_m