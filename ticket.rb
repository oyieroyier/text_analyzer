class Ticket
  attr_reader :venue, :date
  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def bei=(amount)
    if (amount * 100).to_i == amount * 100
      @price = amount
    else
      puts "Nah, this price is malformed, bruh!"
    end
  end

  def discount(rate)
    @price = @price * (100 - rate) / 100
    # puts "price is now #{@price}"
  end
end

solfest = Ticket.new("Karen Waterfront", "12/12/2023")
solfest.bei = 200.00

# puts solfest.venue
# puts solfest.date

# puts "The ticket for #{solfest.venue} has been discounted 15% to #{solfest.discount(10)}."
# puts solfest.discount(10)

class Publication
  attr_accessor :publisher
end

class Magazine < Publication
  attr_accessor :editor
end

pulse = Magazine.new

pulse.publisher = "Standard Media Publisher."
pulse.editor = "Macharia Waruru."

puts pulse.publisher
puts pulse.editor

class C
end

class D < C
end

puts D.superclass
puts D.superclass.superclass
puts D.superclass.superclass.superclass

my_class = Class.new

def my_class.talking
  puts "I am talking!!!"
end

instance_of_my_class = my_class.new

# p my_class.methods
# p instance_of_my_class.methods

arr = %w[this is a sample array]
p arr.map(&:upcase)