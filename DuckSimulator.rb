class Quackbehavior
    def quack
    end
end

class FlyBehavior
    def fly
    end
end

class CanNotFly < FlyBehavior
    def fly
        puts "I can not fly"
    end
end

class CanFly  < FlyBehavior
    def fly
        puts "Im Fliying"
    end
end

class CanQuack < Quackbehavior
    def quack
        puts "Quack!"
    end
end

class CanNotQuack < Quackbehavior
    def quack
        puts "I can not quack!"
    end
end


class Duck
    @flybehavior = FlyBehavior.new
    @quackbehavior = Quackbehavior.new
    def display
    end
    def fly
        @flybehavior.fly
    end
    def quack
        @quackbehavior.quack
    end
end



class MallarDuck < Duck
    def initialize
        @flybehavior = CanFly.new
        @quackbehavior = CanQuack.new
    end
    def display
        puts "I am MallarDuck"
    end
end


class RedheadDuck < Duck
    def initialize
        @flybehavior = CanFly.new
        @quackbehavior = CanQuack.new
    end
    def display
        puts "I am RedheadDuck"
    end
end

class RubberDuck < Duck
    def initialize
        @flybehavior = CanNotFly.new
        @quackbehavior = CanQuack.new
    end
    def display
        puts "I am Rubber Duck"
    end
end

class DecoyDuck < Duck
    def initialize
        @flybehavior = CanNotFly.new
        @quackbehavior = CanNotQuack.new
    end
    def display
        puts "I am Decoy Duck"
    end
end

puts "---------DUCK_SIMULATOR PROBLEM-----------"
mallarDuck = MallarDuck.new
redheadDuck = RedheadDuck.new
rubberDuck = RubberDuck.new
decoyDuck = DecoyDuck.new

mallarDuck.display
mallarDuck.fly
mallarDuck.quack
puts "-------------------------------"

redheadDuck.display
redheadDuck.fly
mallarDuck.quack
puts "--------------------------------"

rubberDuck.display
rubberDuck.fly
rubberDuck.quack
puts "--------------------------------"

decoyDuck.display
decoyDuck.fly
decoyDuck.quack  