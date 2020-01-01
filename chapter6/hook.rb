class String
  def self.inherited(subclass)
    # 継承された時にここが実行される
    puts "inherited in #{subclass}"
  end
end

class MyString < String; end