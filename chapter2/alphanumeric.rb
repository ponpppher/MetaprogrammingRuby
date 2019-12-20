# Stringに対しto_alphanumericを追加している
# これはグローバルに及んでしまう
class String
  def to_alphanumeric
    gsub(/[^\w\s]/, '')
  end
end