class Amazon
  def reviews_of(_)

    # use fail test
    # raise Exception

    Array.new(30)# mock array
  end
end

def deserves_a_look?(book)
  amazon = Amazon.new
  amazon.reviews_of(book).size > 20
end

p "before set prepend result: #{deserves_a_look?("a book")}"
# "before set prepend result: true"

module AmazonWrapper
  def reviews_of(_)
    start = Time.now
    result = super
    sleep 3 # to puts message
    time_taken = Time.now - start

    puts "reviews_of() took more than #{time_taken} seconds" if time_taken > 2
    # reviews_of() took more than 3.002549 seconds

    result
    rescue Exception
      puts "reviews_of() faild"
      []
    end
  end

  Amazon.class_eval do
    prepend AmazonWrapper
  end

p "after set prepend result: #{deserves_a_look?("a book")}"
# "after set prepend result: true"