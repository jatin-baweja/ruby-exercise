class Item
  def initialize(name, price, imported, sales_tax_exempted)
    @name = name
    @price = price
    @imported = imported
    @sales_tax_exempted = sales_tax_exempted
  end
  def sales_tax
    if !@sales_tax_exempted
      sales_tax = @price * 0.1
      sales_tax.round(2)
    else
      0.00
    end    
  end
  def import_duty
    if @imported
      import_duty = @price * 0.05
      import_duty.round(2)
    else
      0.00
    end
  end
  def total
    total = @price + sales_tax + import_duty
    total.round
  end
  def to_s
    "#{ @name }".ljust(25) + ":" + "#{ total }".rjust(7)
  end
end