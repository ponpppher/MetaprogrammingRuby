module MyModule
  def mymethod; 'mymodule'; end
end

class MyClass
  class << self
    include MyModule
  end
end

# "MyClass method is: mymodule"
p "MyClass method is: #{MyClass.mymethod}"