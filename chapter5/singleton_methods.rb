str = "just a regular string"

# strオブジェクトに対しメソッド定義
def str.title?
  self.upcase == self
end

p "str have a title method: #{str.title?}"
p "grep title: #{str.methods.grep(/title?/)}"
p "singleton_method is: #{str.singleton_methods}"

objestr  = "gyaaa" 
objestr.define_singleton_method(:s_method){ "#{self} have a singleton method"}

p objestr.s_method