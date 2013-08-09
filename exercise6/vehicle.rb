class Vehicle
  def initialize(name, price)
    @name = name
    @price = price
  end
  def details
    print "\nName : #@name \nPrice #@price\n"
  end
  attr_writer :price
end
class Bike < Vehicle
  def initialize(name, price, dealer)
    super(name, price)
    @dealer = dealer
  end
  def details
    super
    print "Dealer : #@dealer\n"
  end
end

pulsar = Bike.new("Pulsar", 60000, "Bajaj")
pulsar.details
pulsar.price = 80000
pulsar.details