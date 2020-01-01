class CleanRoom
  def current_temprature
    # do something
    10
  end
end


clean_r = CleanRoom.new

# ブロックをinstance_evalに渡す事で、
# レシーバがブロックを評価する環境となる
clean_r.instance_eval do
  
  # レシーバ内のcurrent_tempratureメソッドを参照してる
  if current_temprature < 20
    p "i'm cold"
  end
end
