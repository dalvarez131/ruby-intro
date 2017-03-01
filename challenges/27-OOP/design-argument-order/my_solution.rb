class House
  attr_reader :square_feet, :num_bedrooms, :num_baths, :cost

  def initialize(detail = {})
    @address = detail[:address]
    @square_feet = detail[:square_feet]
    @num_bedrooms = detail[:num_bedrooms] || 3
    @num_baths = detail[:num_baths] || 2
    @cost = detail[:cost] || 320_000
    @down_payment = detail[:down_payment] || 0.20
    @sold = detail.fetch(:sold) { true }
    @short_sale = detail[:short_sale]
    @has_tenants = detail.fetch(:has_tenants) { true}
  end

  def obscure_address
    @address.sub(/\A\d*/, '****')
  end

  def buy!(money, good_credit)
    @sold = true if money >= down_payment && good_credit
  end

  def down_payment
    cost * @down_payment
  end

  def to_s
    "#{obscure_address} : #{square_feet} sq. ft., #{num_bedrooms} bed, #{num_baths} bath. $#{cost}"
  end
end


# Pon driver code aca para probar que todo este funcionando.
###### DRIVER CODE ########
p my_casa=House.new({address: "21 st", square_feet: 12, sold: true, short_sale: 20 })
p my_casa.obscure_address
p my_casa.buy!(80000,20000)
p my_casa.down_payment
p my_casa.to_s
