# base class Human
class Human
    @@classVariable = 20;
    # prints "I evolved!"
    def inherit ()
        puts "I evolved!"
    end
end

# class Person inherits from Human
class Person < Human
    #overrides constructor so that it can take arguments
    def initialize (firstName, lastName, age)
        @firstName = firstName
        @lastName = lastName
        @age = age
    end

    # prints persons firstName, lastName and age
    def introduction ()
        puts "My name is #{@firstName} #{@lastName}, and I'm #{@age} years old."
    end

    def classVar ()
        @@classVariable
    end
end

person = Person.new("Brandon", "Danell", 24)

person.inherit()
person.introduction()
puts "#{person.classVar()}"
