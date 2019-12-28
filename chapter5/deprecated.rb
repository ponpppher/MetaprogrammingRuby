class Book
  def GetTitle
    'old title'
  end
  def title
    'new method title'
  end

  def subtitle
    title + 'sub'
  end

  def lend_to(user)
    puts "Lending to #{user}"
  end

  class << self
  
  private
    def deprecate(old_method, new_method)

      # define_methodでオーバーライドしている 
      # sendで古いメソッドを呼び出すと引数をそのまま新メソッドに渡している
      define_method(old_method) do |*args, &block|
        warn "Warning: #{old_method}() is deprecated. User#{new_method}"
        send(new_method, *args, &block)
      end
    end
  end

  deprecate :GetTitle, :title
  deprecate :LEND_TO_USER, :lend_to
  deprecate :title2, :subtitle
end

book = Book.new
p book.GetTitle