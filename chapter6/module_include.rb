module M; end

class C
  def self.include(*modules)

    # 配列で入ってくる
    # Called: C.include([M])
    puts "Called: C.include(#{modules})"
    super
  end

  include M
end
