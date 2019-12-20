module StringExtentions
  refine String do
    def reverse
      "esrever"
    end
  end
end

# moduleの中で限定的にStringExtensionsが使える
module StringStuff
  using StringExtentions

  # "in modlue: esrever"
  p "in modlue: " + "my_string".reverse
end

# moduleの外では普通のreverseに戻っている
# "out module: gnirts_ym"
p "out module: " + "my_string".reverse