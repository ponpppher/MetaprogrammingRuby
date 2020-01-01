class Roulette
  def method_missing(name, *args)
    person = name.to_s.capitalize
    
    # 無限ループをやめるには外側でnumberを定義する必要がある
    number = ""
    3.times do

      number = rand(10) + 1
      puts "#{number}..."
    end
      # blockの中でnumberを定義しているため、
      # numberを呼び出すとmethod_missingに帰ってきて無限ループになる 
    "#{person} got a #{number}"
  end
end

number_of = Roulette.new
puts number_of.bob
puts number_of.frank
