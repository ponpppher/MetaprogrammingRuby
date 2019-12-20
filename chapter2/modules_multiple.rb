module M1; end

module M2
  # M3でprependしているので効果はない
  include M1
end

module M3
  # 継承チェーンでM3の前にM1となる
  prepend M1
  include M2
end

# "m3's ancestors is [M1, M3, M2]"
p "m3's ancestors is #{M3.ancestors}"
