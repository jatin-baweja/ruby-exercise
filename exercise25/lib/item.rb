class Item
  SALES_TAX_RATE = 0.1
  IMPORT_DUTY_RATE = 0.05
  attr_reader :name, :price

  def initialize(name, price, imported, sales_tax_exempted)
    @name = name
    @price = price
    @imported = imported
    @sales_tax_exempted = sales_tax_exempted
  end

  def sales_tax
    if !@sales_tax_exempted
      sales_tax = price * SALES_TAX_RATE
      sales_tax.round(2)
    else
      0.0
    end    
  end

  def import_duty
    if @imported
      import_duty = price * IMPORT_DUTY_RATE
      import_duty.round(2)
    else
      0.0
    end
  end

  def price_incld_tax
    total = price + sales_tax + import_duty
    total.round(2)
  end

  def details
    details_array = []
    details_array.push(name, price, sales_tax, import_duty, price_incld_tax)
  end

  private :sales_tax, :import_duty

end