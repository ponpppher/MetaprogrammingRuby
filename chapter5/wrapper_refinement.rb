module StringRefinements
  # Stringクラスにモンキーパッチをあてる
  refine String do
    def length
      super > 5 ? "long" : "short"
    end
  end
end

# module定義内でrefinementsがゆうこうになる
using StringRefinements

# "refine string is: long"
p "refine string is: #{"abababababa".length}"