# abstract-factory.rb
# 1. common type interface
class Pizza
    @cheese = String.new
    @pina = String.new
    @otrosIngredientes = String.new
    @masa = String.new
    @temperaturaHorno = String.new
    def preparar
        puts "Preparar la masa estilo: " + @masa
        puts "Prepara/Agregar salsa"
        puts "Agregar ingredientes:"
        if(@cheese.length > 0)
            puts @cheese
        end
        if(@pina.length > 0)
            puts @pina
        end
        if(@otrosIngredientes.length > 0)
            puts @otrosIngredientes
        end
        puts "Hornear a temperatura: " + @temperaturaHorno
        puts "Cortar la pizza en rebanadas"
        puts "Poner la pizza en su caja"
    end
end

#factory-method
class PizzaStore
    @pizza = Pizza.new
    def createPizza
    end
    def orderPizza
        @pizza.preparar
    end
end


class PizzaIngredientFactory
    def createCheese
    end
    def createPina
    end
    def createMasa
    end
    def temperature
    end
end

class CentralCityIngredientFactory < PizzaIngredientFactory
    def createCheese
        "-Cheese de Central City!!"
    end
    def createPina
        "-Pina de Central City!!"
    end
    def createMasa
        "Masa de Central City!!"
    end
    def temperature
        "100"
    end
end

class StarCityIngredientFactory < PizzaIngredientFactory
    def createCheese
        "-Cheese de Star City !!"
    end
    def createPina
        "-Piña de Star City !!"
    end
    def createMasa
        "Masa de Star City!!"
    end
    def temperature
        "99"
    end
end


class MetropolisIngredientFactory < PizzaIngredientFactory
    def createCheese
        "-Cheese de MetroPolis!!"
    end
    def createPina
        "-Piña de MetroPolis!!"
    end
    def createMasa
        "Masa de Metropolis!!"
    end
    def temperature
        "105"
    end
end


class GothamIngredientFactory < PizzaIngredientFactory
    def createCheese
        "-Cheese de Gotham!!"
    end
    def createPina
        "-Piña de Gotham!!"
    end
    def createMasa
        "Masa de Gotham!!"
    end
    def temperature
        "110"
    end
end


# 2. implementations of common type interface
class Queso < Pizza
    def initialize(ingredientFactory)
        @cheese = ingredientFactory.createCheese
        @pina = ""
        @otrosIngredientes = ""
        @masa = ingredientFactory.createMasa
        @temperaturaHorno = ingredientFactory.temperature
    end
end

class Peperoni < Pizza 
    def initialize(ingredientFactory)
        @cheese = ingredientFactory.createCheese
        @pina = ""
        @otrosIngredientes = "-Pepperoni"
        @masa = ingredientFactory.createMasa
        @temperaturaHorno = ingredientFactory.temperature
    end
end       

class Hawaiana < Pizza 
    def initialize(ingredientFactory)
        @cheese = ingredientFactory.createCheese
        @pina = ingredientFactory.createPina
        @otrosIngredientes = "-Jamon"
        @masa = ingredientFactory.createMasa
        @temperaturaHorno = ingredientFactory.temperature
    end
end   

class Alcachofas < Pizza 
    def initialize(ingredientFactory)
        @cheese = ingredientFactory.createCheese
        @pina = ""
        @otrosIngredientes = "-Alcachofas"
        @masa = ingredientFactory.createMasa
        @temperaturaHorno = ingredientFactory.temperature
    end
end

# 3. Creator class for various types
#Factories
class CentralCityStore < PizzaStore
    def createPizza(type)
        ingredientFactory = CentralCityIngredientFactory.new
        case type
            when 'Queso'
                @pizza = Queso.new(ingredientFactory)
            when 'Peperoni'
                @pizza = Peperoni.new(ingredientFactory)
            when 'Hawaiana'
                @pizza = Hawaiana.new(ingredientFactory)
            when 'Alcachofas'
                @pizza = Alcachofas.new(ingredientFactory)
            else
        end
    end
end

class StarCityStore < PizzaStore
    def createPizza(type)
        ingredientFactory = StarCityIngredientFactory.new
        case type
            when 'Queso'
                @pizza = Queso.new(ingredientFactory)
            when 'Peperoni'
                @pizza = Peperoni.new(ingredientFactory)
            when 'Hawaiana'
                @pizza = Hawaiana.new(ingredientFactory)
            when 'Alcachofas'
                @pizza = Alcachofas.new(ingredientFactory)
            else
        end
    end
end

class MetropolisStore < PizzaStore
    def createPizza(type)
        ingredientFactory = MetropolisIngredientFactory.new
        case type
            when 'Queso'
                @pizza = Queso.new(ingredientFactory)
            when 'Peperoni'
                @pizza = Peperoni.new(ingredientFactory)
            when 'Hawaiana'
                @pizza = Hawaiana.new(ingredientFactory)
            when 'Alcachofas'
                @pizza = Alcachofas.new(ingredientFactory)
            else
        end
    end
end

class GothamStore < PizzaStore
    def createPizza(type)
        ingredientFactory = GothamIngredientFactory.new
        case type
            when 'Queso'
                @pizza = Queso.new(ingredientFactory)
            when 'Peperoni'
                @pizza = Peperoni.new(ingredientFactory)
            when 'Hawaiana'
                @pizza = Hawaiana.new(ingredientFactory)
            when 'Alcachofas'
                @pizza = Alcachofas.new(ingredientFactory)
            else
        end
    end
end

puts "------------PIZZASTORE PROBLEM--------------"
  myStore = CentralCityStore.new
  myStore.createPizza('Queso')
  myStore.orderPizza
  puts "-------------------------------"
  myStore = StarCityStore.new
  myStore.createPizza('Peperoni')
  myStore.orderPizza
  puts "-------------------------------"
  myStore = MetropolisStore.new
  myStore.createPizza('Hawaiana')
  myStore.orderPizza
  puts "-------------------------------"
  myStore = GothamStore.new
  myStore.createPizza('Alcachofas')
  myStore.orderPizza

puts "\n \n"