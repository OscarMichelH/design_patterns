# abstract-factory.rb
# 1. common type interface
class Pizza
    @ingredientes = String.new
    def preparar
        puts 'Preparar Masa' 
        puts 'Preparar Agregar Salsa' 
        puts 'Agregar Ingredientes: ' + @ingredientes
        puts 'Cocinar en el horno: '
        puts 'Cortar la pizza en rabanadas'
        puts 'Poner la pizza en su caja'

    end
end
# 2. implementations of common type interface

class Queso < Pizza 
    def initialize(ingredientes, configuraciones)
        @ingredientes = ingredientes
        @configuraciones = configuraciones
    end
end
class Peperoni < Pizza 
    def initialize()
        @ingredientes = "Queso, Peperoni"
    end
end       
class Hawaiana < Pizza 
    def initialize()
        @ingredientes = "Queso, Jamon, Piña"
    end
end       
class Alcachofas < Pizza 
    def initialize()
        @ingredientes = "Queso, Alcachofas"
    end 
end

# 3. Creator class for various types
class PizzaFactory
    # factory methods
    def createPizza(type)
        pizza = Pizza.new
        case type
            when 'Queso'
                pizza = Queso.new
            when 'Peperoni'
                pizza = Peperoni.new
            when 'Hawaiana'
                pizza = Hawaiana.new
            when 'Alcachofas'
                pizza = Alcachofas.new
            else
        end
    end
end



#factory-method
class PizzaStore
    Pizza pizza
    pizza_creator = PizzaCreator.new
    pizza = pizza_creator.createPizza
end


pizza_creator = PizzaFactory.new

pizza1 = pizza_creator.createPizza('Alcachofas')

pizza1.preparar
# pizza2 = pizza_creator.createPeperoni
# pizza3 = pizza_creator.createHawaiana

# #   pizza1.preparar
# #   pizza2.preparar
# pizza3.preparar.preparar