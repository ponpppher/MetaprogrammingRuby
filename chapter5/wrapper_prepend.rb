module ExplicitString
  def length
    super > 5 ? 'long' : 'short'
  end
end

# Stringクラスをオープン
String.class_eval do
  prepend ExplicitString
end

# "prepend string class length method:long"
p "prepend string class length method:#{"long war is".length}"