s1, s2 = "abc", "defg"

s1.instance_eval do
  p self
  def swoosh!; reverse; end
end

p "class method: #{s1.swoosh!}"
p "s2 response?: #{s2.respond_to?(:swoosh)}"