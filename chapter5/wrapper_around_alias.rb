class String
  alias_method :real_length, :length

  def length
    real_length > 5 ? 'long' : 'short'
  end
end

p "length:" + "#{"hosii monoha hitotudake".length}"
# "length:long"

p "real_length:" + "#{"hosii monoha hitotudake".real_length}"
# "real_length:23"