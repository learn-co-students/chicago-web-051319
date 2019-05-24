
module Attributable
  def attr_reader(attributes=[])
    attributes.each do |attr|
      self.define_singleton_method(attr) do
        # Turn :name into '@name'
        instance_var = "@#{attr.to_s}"
        self.instance_variable_get(instance_var)
      end
    end
  end

  def attr_writer(attributes=[])
    attributes.each do |attr|
      # Turn :name into '@name'
      instance_var = "@#{attr.to_s}"
      # Turn :name into :name=
      method_name = "#{attr.to_s}=".to_sym
      self.define_singleton_method(method_name) do |new_value|
        self.instance_variable_set(instance_var, new_value)
      end
    end
  end

  def attr_accessor(attributes=[])
    self.attr_reader(attributes)
    self.attr_writer(attributes)
  end
end

class Person
  include Attributable

  def initialize(name, age)
    @name = name
    @age = age
    attr_accessor([:name, :age])
  end
end

# MY ASSERTION TESTS

# Assertion: including Attributable#attr_accessor gives us reader methods
duke = Person.new(name: "Stanlee Greene", age: 32)
p duke.name == "Stanlee Greene"
p duke.age == 32

# Assertion: including Attributable#attr_accessor gives us writer methods
duke.name = "Duke Greene"
duke.age += 1
p duke.name == "Duke Greene"
p duke.age == 33
