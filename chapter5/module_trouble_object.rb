module MyModule
  def my_method; 'hell'; end
end

obj = Object.new

# Objectの特異クラスをオープンしている
class << obj
  include MyModule
end

# "hell"
p obj.my_method

# [:my_method]
p obj.singleton_methods
