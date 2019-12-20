module M1
  def my_method
    'M1#my_method()'
  end
end

class C
  include M1
end

class D < C; end

p "D's ancestor is #{D.ancestors}"

module M2
  def my_method
    'M1#my_method()'
  end
end

class C2
  # C2の継承の前にM2が入る
  prepend M2
end

class D2 < C2; end

p "D2's ancenstors is #{D2.ancestors}"