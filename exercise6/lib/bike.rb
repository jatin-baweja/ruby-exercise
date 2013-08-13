require_relative "vehicle"
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