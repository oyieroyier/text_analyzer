class Ticket
  attr_accessor :venue, :price
  attr_writer :discount

  def initialize(venue, price)
    puts "A new event has been created!"
    @venue = venue
    @price = price
  end

  def discount(rate)
    @price = price * (100 - rate) / 100.0
    # puts "Price is now $#{@price *= (1 - rate / 100)}"
  end
end

solfest = Ticket.new("Solfest", 200)

solfest.price = 450
# solfest.discount(10)

puts solfest.price
puts solfest.discount(20)