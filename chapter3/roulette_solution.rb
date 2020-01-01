class Roulette
  def method_missing(name, *args)
    person = name.to_s.capitalize
    
    # accept only three person name
    super unless %w[Bob Frank Bill].include? person
    number = 0
    3.times do
      number = rand(10) + 1
      puts "#{number}..."
    end
    "#{person} get a #{number}"
  end
end

name_of = Roulette.new
puts name_of.bob
puts name_of.bill
puts name_of.kyo