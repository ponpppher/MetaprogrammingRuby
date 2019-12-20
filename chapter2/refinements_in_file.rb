# moduleの中にrefineを定義する
# using StringExtentionsで明示的に呼び出すと使える
# 呼び出した時点から呼び出したソースファイルの全てのコードを変更する
module StringExtensions
  refine String do
    def to_alphanumeric
      gsub(/[^\w\s]/, '')
    end
  end
end

# refinements_in_file.rb:12:in `<main>': undefined method `to_alphanumeric' for "my 1st refinement":String (NoMethodError)
# "my 1st refinement".to_alphanumeric

using StringExtensions

# "my 1st refinement"
p "my 1st refinement!!!!!".to_alphanumeric