class Bebida
  @cost = 0
  @description = ""

  def cost
    @cost
  end

  def description
    @description
  end
end

class CondimentDecorator < Bebida
  @cost = 0
  @description = ""
end

class HouseBlen < Bebida
  def initialize
    @cost = 12
    @description = "HouseBlen $12\nCondimentos:\n"
  end
end

class DarkRoast < Bebida
  def initialize
    @cost = 13
    @description = "DarkRoast $13\nCondimentos:\n"
  end
end

class Espresso < Bebida
  def initialize
    @cost = 10
    @description = "Espresso $10\nCondimentos:\n"
  end
end

class Decaf < Bebida
  def initialize
    @cost = 9
    @description = "Decaf $9\nCondimentos:\n"
  end
end

##Condiments

class Leche < CondimentDecorator
  @bebida = Bebida.new

  def initialize(bebida)
    @bebida = bebida
  end

  def description
    @bebida.description + "Lechita $2\n"
  end

  def cost
    2 + @bebida.cost
  end
end

class LecheDeslactosada < CondimentDecorator
  @bebida = Bebida.new

  def initialize(bebida)
    @bebida = bebida
  end

  def description
    @bebida.description + "Lechita Desclatosada $1\n"
  end

  def cost
    1 + @bebida.cost
  end
end

class LecheLight < CondimentDecorator
  @bebida = Bebida.new

  def initialize(bebida)
    @bebida = bebida
  end

  def description
    @bebida.description + "Lechita Light $2\n"
  end

  def cost
    2 + @bebida.cost
  end
end

class LecheDesclatosadaLight < CondimentDecorator
  @bebida = Bebida.new

  def initialize(bebida)
    @bebida = bebida
  end

  def description
    @bebida.description + "Lechita Desclatosada Light $3\n"
  end

  def cost
    3 + @bebida.cost
  end
end

class Mocha < CondimentDecorator
  @bebida = Bebida.new

  def initialize(bebida)
    @bebida = bebida
  end

  def description
    @bebida.description + "Mocha $4\n"
  end

  def cost
    4 + @bebida.cost
  end
end

class LecheSoya < CondimentDecorator
  @bebida = Bebida.new

  def initialize(bebida)
    @bebida = bebida
  end

  def description
    @bebida.description + "Lechita Soya $5\n"
  end

  def cost
    5 + @bebida.cost
  end
end

class Crema < CondimentDecorator
  @bebida = Bebida.new

  def initialize(bebida)
    @bebida = bebida
  end

  def description
    @bebida.description + "Crema $0.5\n"
  end

  def cost
    0.5 + @bebida.cost
  end
end

puts "------------STARBUZZ PROBLEM--------------"
bebida = Espresso.new
bebida = Mocha.new(bebida)
bebida = Mocha.new(bebida)
bebida = Mocha.new(bebida)

puts bebida.description
puts "Costo total: $" + bebida.cost.to_s 

bebida2 = DarkRoast.new
bebida2 = Leche.new(bebida2)
bebida2 = Mocha.new(bebida2)
bebida2 = Crema.new(bebida2)
puts bebida2.description
puts "Costo total: $" + bebida2.cost.to_s 

puts "\n \n"
